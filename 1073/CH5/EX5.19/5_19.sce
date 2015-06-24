clc;
clear;
//Example 5.19
mw_dot=5;            //Water flow rate in [kg/s]
Cpw=4.18;            //Heat capacity of water [kJ/kg.K]
t1=303;              //[K]
t2=343;              //[K]
Q=mw_dot*Cpw*(t2-t1)    //[kJ/s]
Q=Q*1000;                //[W]
T1=413;                  //[K]
T2=373;                  //[K]
dT1=T1-t2               //[K]
dT2=T2-t1               //[K]
dTlm=dT1                 ///[K]
hi=1000;         //[W/sq m.K]
ho=2500;         //[W/sq m.K]
Rd=1/(0.714*1000)      //Fouling factor[m^2.K/KW]
U=1/(1/hi+1/ho+Rd)      //[W/sq m.K]
A=Q/(U*dTlm)            //[sq m]
printf("\nHeat transfer area is %f sq m",A);
