// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Malbers/Color4x33"
{
	Properties
	{
		_Color1("Color 1", Color) = (1,0.1544118,0.1544118,0.397)
		_Color2("Color 2", Color) = (1,0.1544118,0.8017241,0.334)
		_Color3("Color 3", Color) = (0.2535501,0.1544118,1,0.228)
		_Color4("Color 4", Color) = (0.1544118,0.5451319,1,0.472)
		_Color5("Color 5", Color) = (0.9533468,1,0.1544118,0.353)
		_Color6("Color 6", Color) = (0.8483773,1,0.1544118,0.341)
		_Color7("Color 7", Color) = (0.1544118,0.6151115,1,0.316)
		_Color8("Color 8", Color) = (0.4849697,0.5008695,0.5073529,0.484)
		_Color9("Color 9", Color) = (0.9099331,0.9264706,0.6267301,0.353)
		_Color10("Color 10", Color) = (0.1544118,0.1602434,1,0.341)
		_Color11("Color 11", Color) = (1,0.1544118,0.381846,0.316)
		_Color12("Color 12", Color) = (0.02270761,0.1632713,0.2205882,0.484)
		_Smoothness("Smoothness", Range( 0 , 1)) = 1
		_Metallic("Metallic", Range( 0 , 1)) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" }
		Cull Off
		CGPROGRAM
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform float4 _Color1;
		uniform float4 _Color2;
		uniform float4 _Color3;
		uniform float4 _Color4;
		uniform float4 _Color5;
		uniform float4 _Color6;
		uniform float4 _Color7;
		uniform float4 _Color8;
		uniform float4 _Color9;
		uniform float4 _Color10;
		uniform float4 _Color11;
		uniform float4 _Color12;
		uniform float _Metallic;
		uniform float _Smoothness;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float temp_output_3_0_g171 = 1.0;
			float temp_output_7_0_g171 = 4.0;
			float temp_output_9_0_g171 = 3.0;
			float temp_output_8_0_g171 = 3.0;
			float temp_output_3_0_g169 = 2.0;
			float temp_output_7_0_g169 = 4.0;
			float temp_output_9_0_g169 = 3.0;
			float temp_output_8_0_g169 = 3.0;
			float temp_output_3_0_g165 = 3.0;
			float temp_output_7_0_g165 = 4.0;
			float temp_output_9_0_g165 = 3.0;
			float temp_output_8_0_g165 = 3.0;
			float temp_output_3_0_g167 = 4.0;
			float temp_output_7_0_g167 = 4.0;
			float temp_output_9_0_g167 = 3.0;
			float temp_output_8_0_g167 = 3.0;
			float temp_output_3_0_g162 = 1.0;
			float temp_output_7_0_g162 = 4.0;
			float temp_output_9_0_g162 = 2.0;
			float temp_output_8_0_g162 = 3.0;
			float temp_output_3_0_g161 = 2.0;
			float temp_output_7_0_g161 = 4.0;
			float temp_output_9_0_g161 = 2.0;
			float temp_output_8_0_g161 = 3.0;
			float temp_output_3_0_g163 = 3.0;
			float temp_output_7_0_g163 = 4.0;
			float temp_output_9_0_g163 = 2.0;
			float temp_output_8_0_g163 = 3.0;
			float temp_output_3_0_g164 = 4.0;
			float temp_output_7_0_g164 = 4.0;
			float temp_output_9_0_g164 = 2.0;
			float temp_output_8_0_g164 = 3.0;
			float temp_output_3_0_g166 = 1.0;
			float temp_output_7_0_g166 = 4.0;
			float temp_output_9_0_g166 = 1.0;
			float temp_output_8_0_g166 = 3.0;
			float temp_output_3_0_g168 = 2.0;
			float temp_output_7_0_g168 = 4.0;
			float temp_output_9_0_g168 = 1.0;
			float temp_output_8_0_g168 = 3.0;
			float temp_output_3_0_g170 = 3.0;
			float temp_output_7_0_g170 = 4.0;
			float temp_output_9_0_g170 = 1.0;
			float temp_output_8_0_g170 = 3.0;
			float temp_output_3_0_g172 = 4.0;
			float temp_output_7_0_g172 = 4.0;
			float temp_output_9_0_g172 = 1.0;
			float temp_output_8_0_g172 = 3.0;
			o.Albedo = ( ( ( _Color1 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g171 - 1.0 ) / temp_output_7_0_g171 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g171 / temp_output_7_0_g171 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g171 - 1.0 ) / temp_output_8_0_g171 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g171 / temp_output_8_0_g171 ) ) * 1.0 ) ) ) ) + ( _Color2 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g169 - 1.0 ) / temp_output_7_0_g169 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g169 / temp_output_7_0_g169 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g169 - 1.0 ) / temp_output_8_0_g169 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g169 / temp_output_8_0_g169 ) ) * 1.0 ) ) ) ) + ( _Color3 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g165 - 1.0 ) / temp_output_7_0_g165 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g165 / temp_output_7_0_g165 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g165 - 1.0 ) / temp_output_8_0_g165 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g165 / temp_output_8_0_g165 ) ) * 1.0 ) ) ) ) + ( _Color4 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g167 - 1.0 ) / temp_output_7_0_g167 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g167 / temp_output_7_0_g167 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g167 - 1.0 ) / temp_output_8_0_g167 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g167 / temp_output_8_0_g167 ) ) * 1.0 ) ) ) ) ) + ( ( _Color5 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g162 - 1.0 ) / temp_output_7_0_g162 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g162 / temp_output_7_0_g162 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g162 - 1.0 ) / temp_output_8_0_g162 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g162 / temp_output_8_0_g162 ) ) * 1.0 ) ) ) ) + ( _Color6 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g161 - 1.0 ) / temp_output_7_0_g161 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g161 / temp_output_7_0_g161 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g161 - 1.0 ) / temp_output_8_0_g161 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g161 / temp_output_8_0_g161 ) ) * 1.0 ) ) ) ) + ( _Color7 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g163 - 1.0 ) / temp_output_7_0_g163 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g163 / temp_output_7_0_g163 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g163 - 1.0 ) / temp_output_8_0_g163 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g163 / temp_output_8_0_g163 ) ) * 1.0 ) ) ) ) + ( _Color8 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g164 - 1.0 ) / temp_output_7_0_g164 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g164 / temp_output_7_0_g164 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g164 - 1.0 ) / temp_output_8_0_g164 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g164 / temp_output_8_0_g164 ) ) * 1.0 ) ) ) ) ) + ( ( _Color9 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g166 - 1.0 ) / temp_output_7_0_g166 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g166 / temp_output_7_0_g166 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g166 - 1.0 ) / temp_output_8_0_g166 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g166 / temp_output_8_0_g166 ) ) * 1.0 ) ) ) ) + ( _Color10 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g168 - 1.0 ) / temp_output_7_0_g168 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g168 / temp_output_7_0_g168 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g168 - 1.0 ) / temp_output_8_0_g168 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g168 / temp_output_8_0_g168 ) ) * 1.0 ) ) ) ) + ( _Color11 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g170 - 1.0 ) / temp_output_7_0_g170 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g170 / temp_output_7_0_g170 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g170 - 1.0 ) / temp_output_8_0_g170 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g170 / temp_output_8_0_g170 ) ) * 1.0 ) ) ) ) + ( _Color12 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g172 - 1.0 ) / temp_output_7_0_g172 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g172 / temp_output_7_0_g172 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g172 - 1.0 ) / temp_output_8_0_g172 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g172 / temp_output_8_0_g172 ) ) * 1.0 ) ) ) ) ) ).rgb;
			o.Metallic = _Metallic;
			float4 temp_cast_1 = (_Color1.a).xxxx;
			float temp_output_3_0_g154 = 1.0;
			float temp_output_7_0_g154 = 4.0;
			float temp_output_9_0_g154 = 3.0;
			float temp_output_8_0_g154 = 3.0;
			float4 temp_cast_2 = (_Color2.a).xxxx;
			float temp_output_3_0_g153 = 2.0;
			float temp_output_7_0_g153 = 4.0;
			float temp_output_9_0_g153 = 3.0;
			float temp_output_8_0_g153 = 3.0;
			float4 temp_cast_3 = (_Color3.a).xxxx;
			float temp_output_3_0_g149 = 3.0;
			float temp_output_7_0_g149 = 4.0;
			float temp_output_9_0_g149 = 3.0;
			float temp_output_8_0_g149 = 3.0;
			float4 temp_cast_4 = (_Color4.a).xxxx;
			float temp_output_3_0_g152 = 4.0;
			float temp_output_7_0_g152 = 4.0;
			float temp_output_9_0_g152 = 3.0;
			float temp_output_8_0_g152 = 3.0;
			float4 temp_cast_5 = (_Color5.a).xxxx;
			float temp_output_3_0_g156 = 1.0;
			float temp_output_7_0_g156 = 4.0;
			float temp_output_9_0_g156 = 2.0;
			float temp_output_8_0_g156 = 3.0;
			float4 temp_cast_6 = (_Color6.a).xxxx;
			float temp_output_3_0_g157 = 2.0;
			float temp_output_7_0_g157 = 4.0;
			float temp_output_9_0_g157 = 2.0;
			float temp_output_8_0_g157 = 3.0;
			float4 temp_cast_7 = (_Color7.a).xxxx;
			float temp_output_3_0_g158 = 3.0;
			float temp_output_7_0_g158 = 4.0;
			float temp_output_9_0_g158 = 2.0;
			float temp_output_8_0_g158 = 3.0;
			float4 temp_cast_8 = (_Color8.a).xxxx;
			float temp_output_3_0_g151 = 4.0;
			float temp_output_7_0_g151 = 4.0;
			float temp_output_9_0_g151 = 2.0;
			float temp_output_8_0_g151 = 3.0;
			float4 temp_cast_9 = (_Color9.a).xxxx;
			float temp_output_3_0_g150 = 1.0;
			float temp_output_7_0_g150 = 4.0;
			float temp_output_9_0_g150 = 1.0;
			float temp_output_8_0_g150 = 3.0;
			float4 temp_cast_10 = (_Color10.a).xxxx;
			float temp_output_3_0_g155 = 2.0;
			float temp_output_7_0_g155 = 4.0;
			float temp_output_9_0_g155 = 1.0;
			float temp_output_8_0_g155 = 3.0;
			float4 temp_cast_11 = (_Color11.a).xxxx;
			float temp_output_3_0_g160 = 3.0;
			float temp_output_7_0_g160 = 4.0;
			float temp_output_9_0_g160 = 1.0;
			float temp_output_8_0_g160 = 3.0;
			float4 temp_cast_12 = (_Color12.a).xxxx;
			float temp_output_3_0_g159 = 4.0;
			float temp_output_7_0_g159 = 4.0;
			float temp_output_9_0_g159 = 1.0;
			float temp_output_8_0_g159 = 3.0;
			o.Smoothness = ( ( ( ( temp_cast_1 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g154 - 1.0 ) / temp_output_7_0_g154 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g154 / temp_output_7_0_g154 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g154 - 1.0 ) / temp_output_8_0_g154 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g154 / temp_output_8_0_g154 ) ) * 1.0 ) ) ) ) + ( temp_cast_2 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g153 - 1.0 ) / temp_output_7_0_g153 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g153 / temp_output_7_0_g153 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g153 - 1.0 ) / temp_output_8_0_g153 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g153 / temp_output_8_0_g153 ) ) * 1.0 ) ) ) ) + ( temp_cast_3 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g149 - 1.0 ) / temp_output_7_0_g149 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g149 / temp_output_7_0_g149 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g149 - 1.0 ) / temp_output_8_0_g149 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g149 / temp_output_8_0_g149 ) ) * 1.0 ) ) ) ) + ( temp_cast_4 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g152 - 1.0 ) / temp_output_7_0_g152 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g152 / temp_output_7_0_g152 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g152 - 1.0 ) / temp_output_8_0_g152 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g152 / temp_output_8_0_g152 ) ) * 1.0 ) ) ) ) ) + ( ( temp_cast_5 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g156 - 1.0 ) / temp_output_7_0_g156 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g156 / temp_output_7_0_g156 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g156 - 1.0 ) / temp_output_8_0_g156 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g156 / temp_output_8_0_g156 ) ) * 1.0 ) ) ) ) + ( temp_cast_6 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g157 - 1.0 ) / temp_output_7_0_g157 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g157 / temp_output_7_0_g157 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g157 - 1.0 ) / temp_output_8_0_g157 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g157 / temp_output_8_0_g157 ) ) * 1.0 ) ) ) ) + ( temp_cast_7 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g158 - 1.0 ) / temp_output_7_0_g158 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g158 / temp_output_7_0_g158 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g158 - 1.0 ) / temp_output_8_0_g158 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g158 / temp_output_8_0_g158 ) ) * 1.0 ) ) ) ) + ( temp_cast_8 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g151 - 1.0 ) / temp_output_7_0_g151 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g151 / temp_output_7_0_g151 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g151 - 1.0 ) / temp_output_8_0_g151 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g151 / temp_output_8_0_g151 ) ) * 1.0 ) ) ) ) ) + ( ( temp_cast_9 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g150 - 1.0 ) / temp_output_7_0_g150 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g150 / temp_output_7_0_g150 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g150 - 1.0 ) / temp_output_8_0_g150 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g150 / temp_output_8_0_g150 ) ) * 1.0 ) ) ) ) + ( temp_cast_10 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g155 - 1.0 ) / temp_output_7_0_g155 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g155 / temp_output_7_0_g155 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g155 - 1.0 ) / temp_output_8_0_g155 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g155 / temp_output_8_0_g155 ) ) * 1.0 ) ) ) ) + ( temp_cast_11 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g160 - 1.0 ) / temp_output_7_0_g160 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g160 / temp_output_7_0_g160 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g160 - 1.0 ) / temp_output_8_0_g160 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g160 / temp_output_8_0_g160 ) ) * 1.0 ) ) ) ) + ( temp_cast_12 * ( ( ( 1.0 - step( i.uv_texcoord.x , ( ( temp_output_3_0_g159 - 1.0 ) / temp_output_7_0_g159 ) ) ) * ( step( i.uv_texcoord.x , ( temp_output_3_0_g159 / temp_output_7_0_g159 ) ) * 1.0 ) ) * ( ( 1.0 - step( i.uv_texcoord.y , ( ( temp_output_9_0_g159 - 1.0 ) / temp_output_8_0_g159 ) ) ) * ( step( i.uv_texcoord.y , ( temp_output_9_0_g159 / temp_output_8_0_g159 ) ) * 1.0 ) ) ) ) ) ) * _Smoothness ).r;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=15301
7;29;1906;1014;3507.045;1562.133;4.956524;True;False
Node;AmplifyShaderEditor.ColorNode;183;-194.742,1695.03;Float;False;Property;_Color9;Color 9;8;0;Create;True;0;0;False;0;0.9099331,0.9264706,0.6267301,0.353;0.9533468,1,0.1544118,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;158;-183.7895,1424.406;Float;False;Property;_Color8;Color 8;7;0;Create;True;0;0;False;0;0.4849697,0.5008695,0.5073529,0.484;0.4849697,0.5008695,0.5073529,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;157;-182.3802,1181.25;Float;False;Property;_Color7;Color 7;6;0;Create;True;0;0;False;0;0.1544118,0.6151115,1,0.316;0.1544118,0.6151115,1,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;182;-190.5642,2431.409;Float;False;Property;_Color12;Color 12;11;0;Create;True;0;0;False;0;0.02270761,0.1632713,0.2205882,0.484;0.4849697,0.5008695,0.5073529,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;180;-189.1549,2188.253;Float;False;Property;_Color11;Color 11;10;0;Create;True;0;0;False;0;1,0.1544118,0.381846,0.316;0.1544118,0.6151115,1,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;181;-202.6826,1954.387;Float;False;Property;_Color10;Color 10;9;0;Create;True;0;0;False;0;0.1544118,0.1602434,1,0.341;0.8483773,1,0.1544118,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;152;-194.2135,166.9271;Float;False;Property;_Color3;Color 3;2;0;Create;True;0;0;False;0;0.2535501,0.1544118,1,0.228;0.2535501,0.1544118,1,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;150;-207.7412,-66.93771;Float;False;Property;_Color2;Color 2;1;0;Create;True;0;0;False;0;1,0.1544118,0.8017241,0.334;1,0.1544118,0.8017241,0.334;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;23;-199.8005,-326.2955;Float;False;Property;_Color1;Color 1;0;0;Create;True;0;0;False;0;1,0.1544118,0.1544118,0.397;1,0.1544118,0.1544118,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;156;-195.9079,947.3851;Float;False;Property;_Color6;Color 6;5;0;Create;True;0;0;False;0;0.8483773,1,0.1544118,0.341;0.8483773,1,0.1544118,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;159;-187.9672,688.0273;Float;False;Property;_Color5;Color 5;4;0;Create;True;0;0;False;0;0.9533468,1,0.1544118,0.353;0.9533468,1,0.1544118,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;154;-195.6228,411.2479;Float;False;Property;_Color4;Color 4;3;0;Create;True;0;0;False;0;0.1544118,0.5451319,1,0.472;0.1544118,0.5451319,1,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;173;470.6072,411.2918;Float;True;ColorShartSlot;-1;;152;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;4;False;9;FLOAT;3;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;179;460.837,-69.86829;Float;True;ColorShartSlot;-1;;153;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;2;False;9;FLOAT;3;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;167;466.247,-326.8278;Float;True;ColorShartSlot;-1;;154;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;1;False;9;FLOAT;3;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;168;470.0929,168.1358;Float;True;ColorShartSlot;-1;;149;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;3;False;9;FLOAT;3;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;185;543.4494,1680.076;Float;True;ColorShartSlot;-1;;150;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;1;False;9;FLOAT;1;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;171;482.4404,1425.615;Float;True;ColorShartSlot;-1;;151;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;4;False;9;FLOAT;2;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;172;481.9263,1182.458;Float;True;ColorShartSlot;-1;;158;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;3;False;9;FLOAT;2;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;191;549.5507,2416.455;Float;True;ColorShartSlot;-1;;159;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;4;False;9;FLOAT;1;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;189;549.0366,2173.298;Float;True;ColorShartSlot;-1;;160;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;3;False;9;FLOAT;1;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;187;535.5086,1939.433;Float;True;ColorShartSlot;-1;;155;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;2;False;9;FLOAT;1;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;169;476.3391,689.236;Float;True;ColorShartSlot;-1;;156;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;1;False;9;FLOAT;2;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;174;468.3983,948.5938;Float;True;ColorShartSlot;-1;;157;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;2;False;9;FLOAT;2;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;190;200.9619,2415.321;Float;True;ColorShartSlot;-1;;172;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;4;False;9;FLOAT;1;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;176;1224.705,681.1509;Float;True;4;4;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;153;122.0185,410.1585;Float;True;ColorShartSlot;-1;;167;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;4;False;9;FLOAT;3;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;192;1190.002,1586.073;Float;True;4;4;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;175;1231.411,909.2441;Float;True;4;4;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;149;107.9764,-66.86263;Float;True;ColorShartSlot;-1;;169;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;2;False;9;FLOAT;3;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;186;186.9198,1938.3;Float;True;ColorShartSlot;-1;;168;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;2;False;9;FLOAT;1;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;184;194.8606,1678.942;Float;True;ColorShartSlot;-1;;166;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;1;False;9;FLOAT;1;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;163;127.7504,688.1025;Float;True;ColorShartSlot;-1;;162;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;1;False;9;FLOAT;2;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;160;119.8096,947.4603;Float;True;ColorShartSlot;-1;;161;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;2;False;9;FLOAT;2;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;161;133.3375,1181.325;Float;True;ColorShartSlot;-1;;163;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;3;False;9;FLOAT;2;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;151;121.5042,167.0022;Float;True;ColorShartSlot;-1;;165;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;3;False;9;FLOAT;3;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;162;133.8517,1424.481;Float;True;ColorShartSlot;-1;;164;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;4;False;9;FLOAT;2;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;145;115.9171,-326.2204;Float;True;ColorShartSlot;-1;;171;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;1;False;9;FLOAT;3;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;188;200.4478,2172.165;Float;True;ColorShartSlot;-1;;170;231fe18505db4a84b9c478d379c9247d;0;5;38;COLOR;0.7843138,0.3137255,0,0;False;3;FLOAT;3;False;9;FLOAT;1;False;7;FLOAT;4;False;8;FLOAT;3;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;177;1479.573,822.2111;Float;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;193;1126.266,334.7972;Float;True;4;4;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;164;1130.732,57.40811;Float;True;4;4;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;166;1496.486,1037.67;Float;False;Property;_Smoothness;Smoothness;12;0;Create;True;0;0;False;0;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;146;1124.026,-170.6852;Float;True;4;4;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;165;1691.967,238.6589;Float;False;Property;_Metallic;Metallic;13;0;Create;True;0;0;False;0;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;155;1378.894,-29.6249;Float;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;178;1803.628,700.3177;Float;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;2076.697,169.3291;Float;False;True;2;Float;ASEMaterialInspector;0;0;Standard;Malbers/Color4x33;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Off;0;False;-1;0;False;-1;False;0;0;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;-1;False;-1;-1;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;0;0;False;0;0;0;False;-1;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;173;38;154;4
WireConnection;179;38;150;4
WireConnection;167;38;23;4
WireConnection;168;38;152;4
WireConnection;185;38;183;4
WireConnection;171;38;158;4
WireConnection;172;38;157;4
WireConnection;191;38;182;4
WireConnection;189;38;180;4
WireConnection;187;38;181;4
WireConnection;169;38;159;4
WireConnection;174;38;156;4
WireConnection;190;38;182;0
WireConnection;176;0;167;0
WireConnection;176;1;179;0
WireConnection;176;2;168;0
WireConnection;176;3;173;0
WireConnection;153;38;154;0
WireConnection;192;0;185;0
WireConnection;192;1;187;0
WireConnection;192;2;189;0
WireConnection;192;3;191;0
WireConnection;175;0;169;0
WireConnection;175;1;174;0
WireConnection;175;2;172;0
WireConnection;175;3;171;0
WireConnection;149;38;150;0
WireConnection;186;38;181;0
WireConnection;184;38;183;0
WireConnection;163;38;159;0
WireConnection;160;38;156;0
WireConnection;161;38;157;0
WireConnection;151;38;152;0
WireConnection;162;38;158;0
WireConnection;145;38;23;0
WireConnection;188;38;180;0
WireConnection;177;0;176;0
WireConnection;177;1;175;0
WireConnection;177;2;192;0
WireConnection;193;0;184;0
WireConnection;193;1;186;0
WireConnection;193;2;188;0
WireConnection;193;3;190;0
WireConnection;164;0;163;0
WireConnection;164;1;160;0
WireConnection;164;2;161;0
WireConnection;164;3;162;0
WireConnection;146;0;145;0
WireConnection;146;1;149;0
WireConnection;146;2;151;0
WireConnection;146;3;153;0
WireConnection;155;0;146;0
WireConnection;155;1;164;0
WireConnection;155;2;193;0
WireConnection;178;0;177;0
WireConnection;178;1;166;0
WireConnection;0;0;155;0
WireConnection;0;3;165;0
WireConnection;0;4;178;0
ASEEND*/
//CHKSM=94AE48D8CDED2A86EBD65140EEEA7A5D775094D0