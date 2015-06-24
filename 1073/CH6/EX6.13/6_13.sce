clc;
clear;
//Example 6.13
Cpf=4.18        //[kJ/kg.K]
dT1=18          //[K]
dT2=17          //[K]
dT3=34          //[K]
mf_dot=4        //[kg/s]
Ts=394          //[K]
bp=325      //Bp of water at 13.172 kPa [K]
dT=Ts-bp        //[K]
lambda_s=2200           //[kJ/kg]
T1=Ts-dT1           //[K]
lambda1=2249        //[kJ/kg]
lambda_v1=lambda1       //[kJ/kg]

T2=T1-dT2           //[K]
lambda2=2293        //[kJ/kg]
lambda_v2=lambda2       //[kJ/kg]

T3=T2-dT3           //[K]
lambda3=2377        //[kJ/kg]
lambda_v3=lambda3       //[kJ/kg]

ic=0.1      //Initial conc of solids
fc=0.5      //Final conc of solids
m3dot_dash=(ic/fc)*mf_dot       //[kg/s]
mv_dot=mf_dot-m3dot_dash        //Total evaporation in [kg/s]
//Material balance over first effect
//mf_dot=mv1_dot_m1dot_dash
//Energy balance:
//ms_dot*lambda_s=mf_dot*(Cpf*(T1-Tf)+mv1_dot*lambda_v1)

//Material balance over second effect
//m1dot_dash=mv2_dot+m2dot_dash
//Enthalpy balance:
//mv1_dot*lambda_v1+m1dot_dash(cp*(T1-T2)=mv2_dot*lambda_v2)

//Material balance over third effect
//m2dot_dash=mv3_dot+m3dot+dash

//Enthalpy balance:
//mv2_lambda_v2+m2dot_dash*cp*(T2-T3)=mv3_dot*lambda_v3
294
mv2_dot=3.2795/3.079        //[kg/s]
mv1_dot=1.053*mv2_dot-0.1305     //[kg/s]
mv3_dot=1.026*mv2_dot+0.051     //[kg/s]
ms_dot=(mf_dot*Cpf*(T1-294)+mv1_dot*lambda_v1)/lambda_s      //[kg/s]
eco=mv_dot/ms_dot           //Steam economy      
eco=round(eco)
printf("\nSteam economy is %d\n",eco);
U1=3.10     //[kW/sq m.K]
U2=2     //[kW/sq m.K]
U3=1.10     //[kW/sq m.K]
//First effect:
A1=ms_dot*lambda_s/(U1*dT1)         //[sq m]
A2=mv1_dot*lambda_v1/(U2*dT2)        //[sq m]
A3=mv2_dot*lambda_v2/(U3*dT3)        //[sq m]
//Areas are calculated witha  deviation of +-10%
printf("\nArea pf heat transfer in each effect is %f sq m\n",A3)
