
clc;
clear;
//Example 6.4
Cpf=3.98        //Specific heat of feed in kJ/(kg.K)
lambda_s=2202    //Latent heat of conds of heat at 0.2MPa in [kJ/kg]
lambda=2383     //Latent heat of vaporisation of water aty 323 [kJ/kg
ic=0.1          //Initial concentration of soilds in [%]
fc=0.5          //Final concentration
m_dot=30000     //Feed to evaporator in [kg/h]
mdash_dot=ic* m_dot/fc  //Mass flow rate of thick liquor in [kg/h]
mv_dot=m_dot-mdash_dot      //Water evaporated in [kg/h]

//Case 1: Feed at 293K
mf_dot=30000        //[kg/h]
mv_dot=24000        //[kg/h]
Cpf=3.98        //[kJ/(kg.K)]
Ts=393      //Saturation temperature of steam in [K]
T=323       //Boiling point of solution [K]
lambda_s=2202       //Latent heat of condensation [kJ/kg]
lambda=2383     //Latent heat of vaporisation[kJ/kg]
Tf=293          //Feed temperature
//Enthalpy balance over the evaporator:
ms_dot=(mf_dot*Cpf*(T-Tf)+mv_dot*lambda)/lambda_s       //Steam consumption[kg/h]
eco=(mv_dot/ms_dot)         //Steam economy
printf("\nWhen Feed introduced at 293 K ,Steam economy is %f\n",eco);
dT=Ts-T                     //[K]
U=2900          //[W/sq m.K]
Q=ms_dot*lambda_s           //Heat load =Rate of heat transfer in [kJ/h]
Q=Q*1000/3600               //[J/s]
A=Q/(U*dT)              //Heat transfer area required [sq m]
printf("\n ANSWER-(i)\n\n At 293 K,Heat transfer area required is %f sq m\n",A);

//Case2: Feed at 308K
Tf=308      //[Feed temperature][K]
ms_dot=(mf_dot*Cpf*(T-Tf)+mv_dot*lambda)/lambda_s           //Steam consumption in [kg/h]
eco=mv_dot/ms_dot               //Economy of evaporator
printf("\n ANSWER-(ii)\n\n When T=308 K \nEconomy of evaporator is %f\n",eco);
Q=ms_dot*lambda_s               //[kJ/h]
Q=Q*1000/3600                   //[J/s]
A=Q/(U*dT)                      //Heat transfer area required [sq m]
printf('\nANSWER-(iii) \n When T=308 K,\nHeat transfer Area required is %f sq m\n",A);
