clc;
clear;
//Example 5.6
printf("\nLMTD Approach\n")

Cph=4187            //[J/(kg.K)]
mh_dot=600/3600     //Hot side flow rate [kg/s]
mc_dot=1500/3600        //[kg/s]
Cpc=Cph             //[J/kg.K]
T1=343              //[K]
T2=323              //[K]
Q=mh_dot*Cph*(T1-T2)    //[W]
t1=298                  //[K]
t2=(mh_dot*Cph*(T1-T2))/(mc_dot*Cpc)+t1 //[K]
dT1=45      //[K]
dT2=17          //[K]
dTlm=(dT1-dT2)/log(dT1/dT2)         //[K]
hi=1600         //Heat transfer coeff in [W/sq m.K]
ho=hi           //[W/sq m.K]
U=1/(1/hi+1/ho)     //[W/sq m.K]
A=Q/(U*dTlm)        //[sq m]

printf("\nEffectiveness-NTU approach\n");

//hot water:
h=mh_dot*Cph            //[W/K]
c=mc_dot*Cpc            //[W/K]
//Heat capacity rate of hot fluid is small
C=mh_dot*Cph/(mc_dot*Cpc)       //
E=(T1-T2)/(T1-t1)       //Effectiveness
//for paralell flow:
ntu=-log(1-E*(1+C))/(1+C)       
A2=(ntu*mh_dot*Cph)/U    //[sq m]
t2=C*(T1-T2)+t1         //[K]
printf("\n By LMTD approach area of heat exchanger is %f sq m\n",A);
printf("\nBy Ntu approach Area of heat exchanger is %f sq  m\n",A);
printf("\n Outlet temperature of cold water=%f K\n",t2)
