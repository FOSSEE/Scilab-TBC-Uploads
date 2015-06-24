clc;
clear;
//Example 6.5
m_dot=5000  //Feed to the evaporator [kg/h]
Cpf=4.187           //Cp of feed in [kJ/kg.K]
ic=0.10             //Initial concentration
fc=0.4              //Final concentration
mdash_dot=m_dot*ic/fc           //[kg/h] of thick liquor
mv_dot=m_dot-mdash_dot          //Water evaporated in[kg/h]
lambda_s=2162           //Latent heat of condensing steam [kJ/kg]
P=101.325       //Pressure in the evaporator[kPa]
bp=373          //[K]
Hv=2676     //Enthalpy of water vapor [kJ/kg]
H_dash=419          //[kJ/kg]
Hf=170          //[kJ/kg]
ms_dot=(mv_dot*Hv+mdash_dot*H_dash-m_dot*Hf)/lambda_s          //Steam consumption in [kg/h]
eco=mv_dot/ms_dot           //Steam economy of evaporator
Q=ms_dot*lambda_s           //[kJ/h]
U=1750          //[W/sq m.K]
dT=34           //[K]
Q=Q*1000/3600               //[J/s]
A=Q/(U*dT)                  //[sq m]
printf("\n Heat transfer area to be provided is %f sq m",A);
