
clc;
clear;
//Example 4.19
sigma=5.67*10^-8    //[W/sq m.K^4]
A1=0.5*1    //[sq m]
F12=0.285
T1=1273 ///[K]
T2=773  //[K]
Q=sigma*A1*F12*(T1^4-T2^4)    //[W]
printf("\n Net radiant heat exchange between plates is %d W",Q);
