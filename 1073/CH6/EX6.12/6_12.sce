
clc;
clear;
//Example 6.12
Tf=353;          //[K]
T=273           //[K]
mf_dot=10000;         //Feed [kg/h]
ic=0.07;         //Initial conc of glycerine 
fc=0.4;          //FinaL CONC OF GLYCERINE
//Overall glycerine balance
m3dot_dash=(ic/fc)*mf_dot           //[kg/h]
mv_dot=mf_dot-m3dot_dash            ///[kg/h]
P=313;           //Steam pressure[kPa]
Ts=408;      //[from steam table][K]
P1=15.74;        //[Pressure in last effect][kPa]
Tv3=328;         //[Vapour temperature]
dT=Ts-Tv3      //Overall apparent [K]
bpr1=10  ;       //[K]
bpr2=bpr1;
bpr3=bpr2;
sum_bpr=bpr1+bpr2+bpr3      //[K]
dT=dT-sum_bpr               //True_Overall
dT1=14.5;            //[K]
dT2=16;              //[K]
dT3=19.5;            //[K]
Cpf=3.768            //[kJ/(kg.K)]
//Enthalpies of various streams
Hf=Cpf*(Tf-T)           //[kJ/kg]
H1=Cpf*(393.5-T)           //[kJ/kg]
H2=Cpf*(367.5-T)           //[kJ/kg]
H3=Cpf*(338-T)           //[kJ/kg]
//For steam at 40K
lambda_s=2160       //[kJ/kg]
Hv1=2692        //[kJ/kg]
lambda_v1=2228.3        //[kJ/kg]
Hv2=2650.8          //[kJ/kg]
lambda_v2=2297.4        //[kJ/kg]
Hv3=2600.5              //[kJ/kg]
lambda_v3=2370      //[kJ/kg]

//MATERIAL AND EBERGY BALANCES
//First effect
//Material balance

//m1dot_dash=mf_dot-mv1_dot
//m1dot_dash=1750+mv2_dot+mv3_dot           

//Energy balance
//ms_dot*lambda_s+mf_Dot*hf=mv1_dot*Hv1+m1dot_dash*H1
//2160*ms_dot+2238*(mv2_dot+mv3_dot)=19800500

//Second effect
//Energy balance:
//mv3_dot=8709.54-2.076*mv2_dot

//Third effect:
//m2dot_dash=mv3_dot+m3dot_dash
//m2dot_dash=mv3_dot+1750
//From eqn 8 we get
mv2_dot=(8709.54*2600.5+1750*244.92-8790.54*356.1-356.1*1750)/(-2.076*356.1+2297.4+2600.5*2.076)
//From eqn 8:
mv3_dot=8709.54-2.076*mv2_dot           //[kg/h]
mv1_dot=mv_dot-(mv2_dot+mv3_dot)        //[kg/h]
//From equation 4:
//m1dot_dash=mf_dot-mv1_dot
//ms_dot=(mv1_dot*Hv1+m1dot_dash*H1-mf_dot*Hf)/lambda_s   //[kg/h]
ms_dot=(19800500-2238*(mv2_dot+mv3_dot))/2160           //[kg/h]

//Heat transfer Area is
U1=710          //[W/sq m.K]
U2=490          //[W/sq m.K]
U3=454          //[W/sq m.K]
A1=ms_dot*lambda_s*1000/(3600*U1*dT1)     //[sq m]
A2=mv1_dot*lambda_v1*1000/(3600*U2*dT2)   //[sq m]
A3=mv2_dot*lambda_v2*1000/(3600*U3*dT3)   //[sq m]
//The deviaiton is within +-10%
//Hence maximum A1 area can be recommended

eco=(mv_dot/ms_dot)     //[Steam economy]

Qc=mv3_dot*lambda_v3        //[kJ/h]
dT=25           //Rise in water temperature
Cp=4.187
mw_dot=Qc/(Cp*dT)
printf("\nANSWER\n Area in each effect%f sq m\n",A1);
printf("\nANSWER \n Steam economy is%f\n",eco);
printf("\nANSWER Cooling water rate is %f t/h",mw_dot/1000)
