using System;
using System.Threading.Tasks;
using UnityEngine;
using Loom.Nethereum.ABI.FunctionEncoding.Attributes;
using Loom.Client;
using Loom.Client.Samples;
using System.Numerics;
using System.Threading;

[FunctionOutput]
public class FelineCreation
{
    [Parameter("uint", "felineId", 1)]
    public BigInteger FelineId { get; set; }

    [Parameter("address", "owner", 2)]
    public string Owner { get; set; }
    //public GameObject gameObject;
}

public class LoomProvider : MonoBehaviour
{
    void HandleEventHandler(object sender, EvmChainEventArgs e)
    {
    }


    // Select an ABI from our project resources
    // We got these from the migration script in Truffle
    public TextAsset simpleStoreABI;
    public TextAsset simpleStoreAddress;

    private EvmContract felineContract = null;

    // Use this for initialization
    public async void Start()
    {
        // Generate new keys for this user
        // TODO - Either store these or let the user enter a private key
        var privateKey = CryptoUtils.GeneratePrivateKey();
        var publicKey = CryptoUtils.PublicKeyFromPrivateKey(privateKey);

        // Get the contract
        felineContract = await GetContract(privateKey, publicKey);

        // Make a call
        await CreateFeline();
    }

    // Get's the contract as an object 
    async Task<EvmContract> GetContract(byte[] privateKey, byte[] publicKey)
    {
        var writer = RpcClientFactory.Configure()
            .WithLogger(Debug.unityLogger)
            .WithHTTP("http://127.0.0.1:46658/rpc")
            .Create();

        var reader = RpcClientFactory.Configure()
            .WithLogger(Debug.unityLogger)
            .WithHTTP("http://127.0.0.1:46658/query")
            .Create();

        var client = new DAppChainClient(writer, reader)
        {
            Logger = Debug.unityLogger
        };

        // Required middleware
        client.TxMiddleware = new TxMiddleware(new ITxMiddlewareHandler[]{
            new NonceTxMiddleware(publicKey, client),
            new SignedTxMiddleware(privateKey)
        });

        // ABI of the Solidity contract
        string abi = simpleStoreABI.ToString();

        var contractAddr = new Address(simpleStoreAddress.ToString());
        var callerAddr = Address.FromPublicKey(publicKey);

        return new EvmContract(client, contractAddr, callerAddr, abi);
    }

    async Task CreateFeline()
    {
        AutoResetEvent waitForEvents = new AutoResetEvent(false);
        //felineContract.EventReceived += onEventReceived;

        await felineContract.CallAsync("createFeline");
        //await felineContract.CallDtoTypeOutputAsync<FelineCreation>("createFeline");

        //Debug.Log("FelineId " + feline.FelineId);
        //var value = await felineContract.StaticCallSimpleTypeOutputAsync<int>("getFelineGenes");

        //Debug.Log("CreateFeline = " + value);
    }
}