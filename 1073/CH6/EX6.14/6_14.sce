clc;
clear;
//Example 6.14
mf_dot=1060     //[kg/h]
ic=0.04     //Initial concentration
fc=0.25         //Final concentration
m4dot_dash=(ic/fc)*mf_dot       //[kg/h]
//Total evaporation=
mv_dot=mf_dot-m4dot_dash        //[kg/h]

//Fromsteam table:
P1=370      //[kPa.g]
T1=422.6        //[K]
lambda1=2114.4      //[kJ/kg]

P2=235      //[kPa.g]
T2=410.5        //[K]
lambda2=2151.5      //[kJ/kg]

P3=80      //[kPa.g]
T3=390.2        //[K]
lambda3=2210.2      //[kJ/kg]

P4=50.66      //[kPa.g]
T4=354.7        //[K]
lambda4=2304.6      //[kJ/kg]

P=700       //Latent heat of steam[kPa .g]
lambda_s=2046.3         //[kJ/kg]

//FIRST EFFECT
//Enthalpy balance:
//ms_dot=mf_dot*Cpf*(T1-Tf)+mv1_dot*lambda1
//ms_dot=1345.3-1.033*m1dot_dash

//SECOND EFFECT
//m1dot_dash=m2dot_dash+mdot_v2
//Enthalpy balance:
//m1dot_dash=531.38+0.510*m2dot_dash

//THIRD EFFECT
//Material balance:
//m2dot_dash-m3dot_dash+mv3_dot

//FOURTH EFFECT
//m3dot_dash=m4dot_dash+mv4_dot
mv4dot_dash=169.6           //[kg/h]
m3dot_dash=416.7        //[kg/h]

//From eq n 4:
m2dot_dash=-176.84+1.98*m3dot_dash      //[kg/h]

//From eqn 2:
m1dot_dash=531.38+0.510*m2dot_dash      //[kg/h]

//From eqn 1:
ms_dot=1345.3-1.033*m1dot_dash
eco=mv_dot/ms_dot           //[kg evaporation /kg steam]
printf("\nSteam economy is %f evaporation/kg steam",eco);
