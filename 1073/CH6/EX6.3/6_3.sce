clc;
clear;
//Exmaple 6.3
ic=0.05     //Initial concentration (5%)
fc=0.2      //Final concentration   (20%)
T_dash=373      //B.P of water in [K]
bpe=5       //Boiling point elevation[K]
mf_dot=5000       //[Basis] feed to evaporator in [kg/h]
//Material balance of solute
mdash_dot=ic*mf_dot/fc       //[kg/h]
//Overall material balance
mv_dot=mf_dot-mdash_dot      //Water evaporated [kg/h]
lambda_s=2185        //Latent heat of condensation of steam[kJ/kg]
lambda_v=2257       //Latent heat of vaporisation of water [kJ/kg]
lambda=lambda_v     //[kJ/kg]
T=T_dash+bpe        //Temperature of thick liquor[K]
Tf=298      //Temperature of feed [K]
Cpf=4.187       //Sp. heat of feed in [kJ/kg.K]
//Heat balance over evaporator=ms_dot
ms_dot=(mf_dot*Cpf*(T-Tf)+mv_dot*lambda)/lambda_s   //Steam consumption [kg/h]
Eco=mv_dot/ms_dot       //Economy of evaporator
Ts=399      //Saturation temperature of steam in [K]
dT=Ts-T     //Temperature driving force [K]        
U=2350      //[W/sq m.K]
Q=ms_dot*lambda_s       //Rate of heat transfer in [kJ/kg]
Q=Q*1000/3600           //[J/s]=[W]
A=Q/(U*dT)              //Heat transfer area in [sq m]
printf("\nANSWER Economoy pf evaporator is %f \n",Eco);
printf("\nHeat tarnsfer area to be provided = %f sq m\n",A);
