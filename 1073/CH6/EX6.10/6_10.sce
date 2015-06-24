clc;
clear;
//Example 6.10
Ts=381.3        //[K]
dT=56.6;     //[K]
U1=2800; //Overall heat transfer coeff in first effect
U2=2200; //Overall heat transfer coeff in first effect
U3=1100; //Overall heat transfer coeff in first effect
dT1=dT/(1+(U1/U2)+(U1/U3))  ///[K]
dT2=dT/(1+(U2/U1)+(U2/U3))  ///[K]
dT3=dT-(dT1+dT2)             //[K]
//dT1=Ts-T1_dash      //[K]
T1dash=Ts-dT1
//dT2=T1_dash-T2_dash         //[K]
T2_dash=T1dash-dT2             //[K]
printf("\n\nBoiling point of solution in first effect =%f K\n\n",T1dash);
printf("\n\nBoiling point of solution in second effect =%f K\n\n",T2_dash);

