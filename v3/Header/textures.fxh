#define merge_strings(a,b) a##b 


texture diffuseTexture : MATERIALTEXTURE <>;
sampler diffuseSampler = sampler_state{texture = < diffuseTexture >; ADDRESSU = WRAP; ADDRESSV = WRAP;};

#ifdef SET_H
texture HTexTexture <string ResourceName = SET_H;>;
#else
texture HTexTexture : MATERIALSPHEREMAP<>;
#endif
sampler HTexSampler = sampler_state{texture = < HTexTexture >; ADDRESSU = CLAMP; ADDRESSV = CLAMP;};

#ifdef SET_S
texture ShadowTexture <string ResourceName = SET_S;>;
#else
texture ShadowTexture : MATERIALTOONTEXTURE<>;
#endif
sampler ShadowSampler = sampler_state{texture = < ShadowTexture >; ADDRESSU = CLAMP; ADDRESSV = CLAMP;};


#ifdef facemap
texture faceShadowTexture < string ResourceName = merge_strings("textures/face/", facemap); >;
sampler faceShadowSampler = sampler_state{texture = < faceShadowTexture >; ADDRESSU = wrap; ADDRESSV = wrap;};
#endif


#ifdef use_distortion
texture DistortionTexture < string ResourceName = merge_strings("textures/distortion/", distortion1); >;
sampler DistortionSampler = sampler_state{texture = < DistortionTexture >; ADDRESSU = wrap; ADDRESSV = wrap;};
#endif
