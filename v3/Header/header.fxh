//includes
#include <header/textures.fxh>

//shit
float4x4 mmd_world : WORLD;
float4x4 mmd_view  : VIEW;
float4x4 mmd_wvp   : WORLDVIEWPROJECTION;
float4x4 mmd_p : PROJECTION;
float4x4 mmd_vp : VIEWPROJECTION;

//useful for scaling edgelines based on camera distance
float4x4 model_world : CONTROLOBJECT < string name = "(self)"; >;
float3 mmd_cameraPosition : POSITION < string Object = "Camera"; >;
bool use_subtexture;
bool use_spheremap;
//mmd RGB lighting intake
float4 egColor;

//DO NOT FUCKING DELETE THIS AJDSHF
float4x4 head_bone : CONTROLOBJECT < string name = "(self)"; string item = "“ª"; >;
float morph : CONTROLOBJECT < string name = "(self)"; string item = Distortion_Morph; >;

//mmd light source
float3 light_d : DIRECTION < string Object = "Light"; >;

float4 MaterialDiffuse  : DIFFUSE   < string Object = "Geometry"; >;
float3 MaterialAmbient  : AMBIENT   < string Object = "Geometry"; >;
float3 MaterialEmissive : EMISSIVE  < string Object = "Geometry"; >;
float3 MaterialSpecular : SPECULAR  < string Object = "Geometry"; >;
float  SpecularPower    : SPECULARPOWER < string Object = "Geometry"; >;
float3 LightDiffuse  : DIFFUSE  < string Object = "Light"; >;
float3 LightAmbient  : AMBIENT  < string Object = "Light"; >;
float3 LightSpecular : SPECULAR < string Object = "Light"; >;
static float4 DiffuseColor  = MaterialDiffuse  * float4(LightDiffuse, 1.0f);
static float3 AmbientColor  = MaterialAmbient  * LightAmbient + MaterialEmissive;
static float3 SpecularColor = MaterialSpecular * LightSpecular;