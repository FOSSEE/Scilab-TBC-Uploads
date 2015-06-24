clc;
clear;
//Example 6.11
mf_dot=10000        //[kg/h] of feed
ic=0.09     //Initial concentration 
fc=0.47     //Final concentration
m1dot_dash=ic*mf_dot/fc     //[kg/h]
Ps=686.616      //Steam pressure [kPa.g]
Ps=Ps+101.325       //[kPa]
Ts=442.7        //Saturation temperature in [K]
P2=86.660       //Vacuum in second effect in [kPa]
U1=2326     //Overall heat transfer in first effect [W/sq m.K]
U2=1744.5   //Overall heat transfer in 2nd effect [W/sqm.K]
P2_abs=101.325-P2   //Absolute pressure in second effect[kPa]
T2=326.3        //Temperature in 2nd effect in [K]
dT=Ts-T2        //[K]
Tf=309      //Feed temperature in[K]
T=273       //[K]
Cpf=3.77        //kJ/kg.K  Specific heat for all caustic streams
//Q1=Q2
//U1*A1*dT1=U2*A2*dT2
dT2=dT/1.75     //[K]
dT1=(U2/U1)*dT2     //[K]
//Since there is no B.P.R
Tv1=Ts-dT1      //Temperature in vapor space of first effect in [K]
Tv2=Tv1-dT2     //Second effect [K]
Hf=Cpf*(Tf-T)       //Feed enthalpy[kJ/kg]
H1dash=Cpf*(Tv1-T)      //Enthalpy of final product[kJ/kg]
H2dash=Cpf*(Tv2-T)      //kJ/kg
//For steam at 442.7 K
lambda_s=2048.7     //[kJ/kg]
//For vapour at 392.8 K
Hv1=2705.22     //[kJ/kg]
lambda_v1=2202.8        //[kJ/kg]
//for vapour at 326.3 K:
Hv2=2597.61     //[kJ/kg]
lambda_v2=2377.8        //[kJ/kg]

//Overall material balance:
mv_dot=mf_dot-m1dot_dash        //[kg/h]

//Equation 4 becomes:
//mv1_dot*lambda_v1+mf_dot*Hf=(mv_dot-mv1_dot)*Hv2+(mf_dot-mv2_dot)*H2_dash
mv1_dot=(H2dash*(mf_dot-mv_dot)-mf_dot*Hf+mv_dot*Hv2)/(Hv2+lambda_v1-H2dash)  
mv2_dot=mv_dot-mv1_dot              //[kg/h]

//From equation 2

m2dot_dash=m1dot_dash+mv1_dot           //First effect material balance[kg/h]
ms_dot=(mv1_dot*Hv1+m1dot_dash*H1dash-m2dot_dash*H2dash)/lambda_s     //[kg/h]


//Heat transfer Area
//First effect
A1=ms_dot*lambda_s*(10^3)/(3600*U1*dT1)     //[sq m]

//Second effect
lambda_v1=lambda_v1*(10^3/3600)
A2=mv1_dot*lambda_v1/(U2*dT2)       //[sq m]

//Since A1 not= A2

//SECOND TRIAL
Aavg=(A1+A2)/2          //[sq m]
dT1_dash=dT1*A1/Aavg        //[K]
dT2_dash=dT-dT1         ///[K]

//Temperature distribution
Tv1=Ts-dT1_dash         //[K]
Tv2=Tv1-dT2_dash            //[K]
Hf=135.66       //[kJ/kg]
H1dash=Cpf*(Tv1-T)      //[kJ/kg]
H2dash=200.83          //[kJ/kg]

//Vapour at 388.5 K
Hv1=2699.8      //[kJ/kg]
lambda_v1=2214.92       //[kJ/kg]
mv1_dot=(H2dash*(mf_dot-mv_dot)-mf_dot*Hf+mv_dot*Hv2)/(Hv2+lambda_v1-H2dash)  
mv2_dot=mv_dot-mv1_dot  //[kg/h]

//First effect Energy balance
ms_dot=((mv1_dot*Hv1+m1dot_dash*H1dash)-(mf_dot-mv2_dot)*H2dash)/lambda_s   //[kg/h]

//Area of heat transfer
lambda_s=lambda_s*1000/3600     
A1=ms_dot*lambda_s/(U1*dT1_dash)        //[sq m]

//Second effect:
A2=mv1_dot*lambda_v1*1000/(3600*U2*dT2_dash)        //[sq m]

printf("\nA1(%f)=A2(%f),So the area in each effect can be %f sq m\n",A1,A2,A2);
printf("\nHeat transfer surface in each effect is %f sq m\n",A2);
printf("\nSteam consumption=%d kg/h\n",round(ms_dot));
printf("\nEvaporation in the first effect is %d kg/h\n",round(mv1_dot));
printf("\nEvaporation in  2nd effect is %d kg/h\n",round(mv2_dot));


