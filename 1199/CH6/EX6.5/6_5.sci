// 6.5
clc;
R=10*10^3;
Ri=100*10^3;
Rt=100*10^3;
Rp=(Ri*R)/(Ri+R);
Attenuation=Rp/Rt;
Attenuation_factor=1/Attenuation;
printf("\nAttenuation factor=%.1f ",Attenuation_factor)