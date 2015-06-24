//6.7
clc;
R2=100*10^3;
Vi=1;
R1=900*10^3;
Vo_dc=Vi*R2/(R1+R2);
k_dc=1/Vo_dc;
printf("\nAttenuationn for dc=%.1f", k_dc)
XC2=1592;
Vi=1;
XC1=3183;
Vo_ac=Vi*XC2/(XC1+XC2);
k_ac=1/Vo_ac;
printf("\nAttenuationn for ac=%.1f", k_ac)
disp('Therefore the attenuation with ac is different from that of dc')