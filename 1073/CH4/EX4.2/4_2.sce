clc;
clear;
//Example 4.2
e=0.9   //Emissivity
T1=393  //[K]
T2=293  //[K]
sigma=5.67*10^-8    //[W/sq m.K]
Qr_by_a=e*sigma*(T1^4-T2^4) //W/sq m
printf("\n Rate of heat transfer by radiation is %f W/sq m",Qr_by_a);
