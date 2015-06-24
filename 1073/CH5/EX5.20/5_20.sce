clc;
clear;
//Example 5.20
Cpo=1.9          //Heat capacity for oil[kJ/kg.K]
Cps=1.86       //Heat capacity for steam [kJ/kg.K]
ms_dot=5.2      //Mass flow rate in [kg/s]
T1=403          //[K]
T2=383          //[K]

Q=ms_dot*Cps*(T1-T2)        //[kJ/s]
Q=Q*1000                    //[W]
t1=288;                      //[K]
t2=358;                      //[K]
dT2=T1-t2                   //[K]
dT1=T2-t1                   //[K]
dTlm=(dT1-dT2)/log(dT1/dT2)     //LMTD in [K]
U=275 ;                          //Overall heat transfer coeffcient in [W//sq m.K]
Ft=0.97                         //LMTD correction factor
A=Q/(U*Ft*dTlm)                 //[sq m]
printf("\nHeat exchanger surface area is %f sq m",A);
