clc;
clear;
//Example 6.6
mf_dot=5000           //[kg/h]
ic=0.01             //Initial concentration [kg/h]
fc=0.02             //Final concentration  [kg/h]
T=373               //Boiling pt of saturation in [K]
Ts=383              //Saturation temperature of steam in [K]  
mdash_dot=ic*mf_dot/fc   //[kg/h]
mv_dot=mf_dot-mdash_dot      //Water evaporated in [kg/h]
Hf=125.79           //[kJ/kg]
Hdash=419.04            //[kJ/kg]
Hv=2676.1           //[kJ/kg]
lambda_s=2230.2     //[kJ/kg]
ms_dot=(mdash_dot*Hdash+mv_dot*Hv-mf_dot*Hf)/lambda_s   //Steam flow rate in [kg/h]
eco=mv_dot/ms_dot           //Steam economy
Q=ms_dot*lambda_s           //Rate of heat transfer in [kJ/h]
Q=Q*1000/3600               //[J/s]
dT=Ts-T                     //[K]

A=69            //Heating area of evaporator in [sq m]
U=Q/(A*dT)      //Overall heat transfer coeff in [W/sq m.K]
printf("\nSteam economy is %f\n",eco);
printf("\n\nOverall heat transfer coefficient is %d  W/sq m.K",round(U));
    


