clc;
clear;
//Example 4.1
e=0.9   //[Emissivity]
sigma=5.67*10^-8    //[W/m^2.K^4]
T1=377  //[K]
T2=283  //[K]
Qr_by_a=e*sigma*(T1^4-T2^4) //[W/sq m]
printf("Heat loss by radiation is %d W/sq m",round(Qr_by_a));
