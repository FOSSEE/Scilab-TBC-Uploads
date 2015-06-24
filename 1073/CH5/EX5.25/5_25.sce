clc;
clear;
//Example 5.25

//(i)Parallel flow
T1=633;     //[K]
t2=303;     //[K]
T2=573;     //[K]
t1=400;     //[K]
dT1=T1-t2;  //[K]
dT2=T2-t1;  //[K]
mh_dot=1.2; //[kg/s]
U=500;      //Overall heat transfer coefficient in [W/sqm.K]
Cp=2083;        //Sp.heat of oil J/kg.K
dTlm=(dT1-dT2)/log(dT1/dT2) //[K]
Q=mh_dot*Cp*(T1-T2)         //[W]
A=Q/(U*dTlm)                //[sq m]

//(ii)Counter current flow
dT1=T1-t1;           //[K]
dT2=T2-t2;          //[K]
dTlm=(dT2-dT1)/log(dT2/dT1)     //[K]
A1=Q/(U*dTlm)        //[sq m]
printf("\nFor parallel flow,Area = %f sq m \n For countercurrent flow,Area=%f sq m\n",A,A1);
printf("\n\nFor the same terminal temperatures of the fluid ,the surface area for the counterflow arrangement\n is less than the required for the parallel flow\n")
