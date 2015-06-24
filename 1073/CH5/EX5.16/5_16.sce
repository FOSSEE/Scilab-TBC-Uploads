clc;
clear;
//Example 5.16
mo_dot=6*10^-2              //[kg/s]
Cpo=2*10^3                       //Specific heat of oil in [J/kg.K]
Cpw=4.18*10^3               //Specific heat of water in [J/kg.K]
T1=420                      //[K]
T2=320                      //[K]
T=290                       //[K] Water entering temperature
Q=mo_dot*Cpo*(T1-T2)        //[J/s]=[W]
//Heat given out =Heat gained
t2=Q/(mo_dot*Cpw)+T         //[K]
dT1=T1-t2                   //[K]
dT2=T2-T                    //[K]
dTlm=(dT1-dT2)/log(dT1/dT2) //[K]
hi=1.6*1000             //[W/sq m.K]
ho=3.6*1000           //[W/sq m.K]
U=1/(1/ho+1/hi) //[W/sq m.K]
A=Q/(U*dTlm)        //[sq m]
D=0.025             //[m]
L=A/(%pi*D)     //[m]
printf("\n Length of tube required = %f m",L);
