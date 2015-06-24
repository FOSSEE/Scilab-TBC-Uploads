//EX12_13 Pg-12.30
clc
clear
m1=0.55;//first modulation index
m2=0.65;//second modulation index
mt=sqrt(m1^2+m2^2);
Pc=360;;//power radiated by the carrier signal
Psb=Pc*mt^2/2//total sideband power radiated
printf("Therefore total sideband power radiated Psb=%.3f W",Psb)
//in the question Pc is taken as 360W but in the answer it is taken as 
//300W I have taken Pc=300W so that Psb=150.5W
