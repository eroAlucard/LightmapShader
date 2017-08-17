// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:1,spmd:1,trmd:0,grmd:1,uamb:False,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:421,x:33409,y:32999,varname:node_421,prsc:2|spec-1930-OUT,gloss-776-OUT,emission-1627-OUT;n:type:ShaderForge.SFN_Tex2d,id:6761,x:32157,y:32349,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:_Texture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5433-UVOUT;n:type:ShaderForge.SFN_Color,id:2306,x:32154,y:32616,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:_MainColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:4543,x:32171,y:33074,ptovrint:False,ptlb:Lightmap,ptin:_Lightmap,varname:_Lightmap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5481-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6692,x:32530,y:33321,varname:node_6692,prsc:2|A-4543-RGB,B-7177-RGB,C-6378-OUT;n:type:ShaderForge.SFN_Color,id:7177,x:32159,y:33345,ptovrint:False,ptlb:LightmapColor,ptin:_LightmapColor,varname:_LightmapColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:6378,x:32080,y:33609,ptovrint:False,ptlb:LightmapPower,ptin:_LightmapPower,varname:_LightmapPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_TexCoord,id:5481,x:31774,y:32917,varname:node_5481,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_TexCoord,id:5433,x:31808,y:32367,varname:node_5433,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:1680,x:32057,y:32868,ptovrint:False,ptlb:BasePower,ptin:_BasePower,varname:_BasePower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:4664,x:32527,y:32450,varname:node_4664,prsc:2|A-6761-RGB,B-2306-RGB,C-1680-OUT;n:type:ShaderForge.SFN_Multiply,id:1627,x:32807,y:32902,varname:node_1627,prsc:2|A-4664-OUT,B-6692-OUT;n:type:ShaderForge.SFN_Slider,id:1930,x:32786,y:33080,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:_Specular,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:776,x:32786,y:33221,ptovrint:False,ptlb:Roughness,ptin:_Roughness,varname:_Roughness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:6761-2306-1680-1930-776-4543-7177-6378;pass:END;sub:END;*/

Shader "Unlit/lightmap_color" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _MainColor ("MainColor", Color) = (0.5,0.5,0.5,1)
        _BasePower ("BasePower", Range(0, 1)) = 1
        _Specular ("Specular", Range(0, 1)) = 0
        _Roughness ("Roughness", Range(0, 1)) = 0
        _Lightmap ("Lightmap", 2D) = "white" {}
        _LightmapColor ("LightmapColor", Color) = (0.5,0.5,0.5,1)
        _LightmapPower ("LightmapPower", Range(0, 1)) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles metal 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _MainColor;
            uniform sampler2D _Lightmap; uniform float4 _Lightmap_ST;
            uniform float4 _LightmapColor;
            uniform float _LightmapPower;
            uniform float _BasePower;
            uniform float _Specular;
            uniform float _Roughness;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 1.0 - _Roughness; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
////// Emissive:
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float4 _Lightmap_var = tex2D(_Lightmap,TRANSFORM_TEX(i.uv1, _Lightmap));
                float3 emissive = ((_Texture_var.rgb*_MainColor.rgb*_BasePower)*(_Lightmap_var.rgb*_LightmapColor.rgb*_LightmapPower));
/// Final Color:
                float3 finalColor = specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
