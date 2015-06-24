clc;
clear;
//Example 6.7
//From previous example:
mf_dot=5000         //[kg/h]
Hf=125.79           //[kJ/kg]
lambda_s=2230.2     //[kJ/kg]
mdash_dot=2500   //[kg/h]
Hdash=313.93         //[kJ/kg]
mv_dot=2500         //[kg/h]
Hv=2635.3           //[kJ/kg]
ms_dot=(mdash_dot*Hdash+mv_dot*Hv-mf_dot*Hf)/lambda_s   //Steam flow rate in [kg/h]
Q=ms_dot*lambda_s           //[kJ/h]
Q=Q*1000/3600           //[W]
U=2862              //[W/sq m.K]
dT=35       //[K]
A=Q/(U*dT)      //[sq m]
printf("\n The heat transfer area in this case is %f sq m\n",A);
printf("\n\nNOTE :There is a calculation mistake in the book at the line12 of this code,ms_dot value is written as 2320.18,which is wrong\n\n");
