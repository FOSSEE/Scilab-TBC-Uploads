clc;
clear;
//Example 6.16
bpr=40.6;        //[K]
Cpf=1.88;       //[kJ/kg.K]
Hf=214;     //[kJ/kg]
H1=505;     //[kJ/kg]
mf_dot=4536;    //[kg/h] of feed solution
ic=0.2;      //Initial conc
fc=0.5;      //Final concentration
m1dot_dash=(ic/fc)*mf_dot       //Thisck liquor flow arte[kg/h]
mv_dot=mf_dot-m1dot_dash        //[kg/H]
Ts=388.5;        //Saturation temperature of steam in [K]
bp=362.5        //b.P of solution in [K]
lambda_s=2214;     //[kJ/kg]
P=21.7;      //Vapor space in [kPa]
Hv=2590.3;       //[kJ/kg]

//Enthalpy balance over evaporator
ms_dot=(m1dot_dash*H1+mv_dot*Hv-mf_dot*Hf)/lambda_s     //[kg/h
printf("\nSteam consumption is %f kg/h\n",ms_dot);
dT=Ts-bp        //[K]
U=1560      //[W/sq m.K]
Q=ms_dot*lambda_s           //[kJ/h]
Q=Q*1000/3600               //[W]
A=Q/(U*dT)      //[sq m]
printf("\nHeat transfer area is %f sq m\n",A);

//Calculations considering enthalpy of superheated vapour

Hv=Hv+Cpf*bpr   //[kJ/kg]
ms_dot=(m1dot_dash*H1+mv_dot*Hv-mf_dot*Hf)/lambda_s     //[kg/h]
printf("\n Now,Steam consumption is %f kg/h\n",ms_dot);
eco=mv_dot/ms_dot       //Steam economy
printf("\nEconomy of evaporator %f\n",eco);
Q=ms_dot*lambda_s       //[kJ/h]
Q=Q*1000/3600           //[w]
A2=Q/(U*dT)              //Area
printf("\nNow,Area is %f\n",A);
perc=(A2-A)*100/A           //%error in the heat transfer area 
printf("\n If enthalpy of water vapour Hv were based on the saturated vapour at the pressure\nthe error introduced is only %f percent\n",perc);
