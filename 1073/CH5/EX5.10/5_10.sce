
clc;
clear;
//Example 5.10
m_dot=7250      //[kg/h] of nitrobenzene 
Cp=2.387;            //[kJ/kg.K]
mu=7*10^-4;          //[kg/m.s]
k=0.151;             //[W/m.K]
vis=1;
Ft=0.9;             //LMTD correction factor
T1=400              //[K]
T2=317              //[K]
t1=333              //[K]
t2=300              //[K]
dT1=T1-t1          //[K]
dT2=T2-t2          //[K]
dTlm=(dT1-dT2)/log(dT1/dT2)       //[K]
//For nitrobenzene
Q=m_dot*Cp*(T1-T2)          //[kJ/h]
Q=Q*1000/3600                    //[W]
n=170           //No. of tubes
L=5     //[m]
Do=0.019            //[m]
Di=0.015            //[m]
Ao=n*%pi*Do*L       //[sq m]
Uo=Q/(Ao*Ft*dTlm)   //[W/sq m.K]
Ud=Uo           //[W/sq m.K]
B=0.15              //Baffle spacing [m]
Pt=0.025            //Tube pitch in [m]
C_dash=Pt-Do        //Clearance in [m]
id=0.45             //[m]

//Shell side cross flow area
as=id*C_dash*B/Pt           //[sq m]

//Equivalent diameter of shell
De=4*(Pt^2-(%pi/4)*(Do^2))/(%pi*Do)        //[m]

//Mass velocity on shell side
Gs=m_dot/as             //[kg/(m.h)]
Gs=Gs/3600              //[kg/m^2.s]
mu=7*10^-4          //[kg/m.s]
Cp=Cp*1000      //[J/kg.K]
Nre=De*Gs/mu        //Reynolds number
Npr=Cp*mu/k         //Prandtl number

//From empirical eqn:
mu_w=mu         //
Nnu=0.36*Nre^0.55*Npr^(1/3)
ho=Nnu*k/De         //[W/sq m.K]
hi=1050             //Given [W/sq m.K]
Uo=1/(1/ho+(1/hi)*(Do/Di))      //[W/sq m.K]
Uc=Uo               //W/sq m.K

//Suitability of heat exchanger
Rd_given=9*10^-4          //[W/sq m.K]
Rd=(Uc-Ud)/(Uc*Ud)          //[W/sq m.K]
printf("\n Rd calculated(%f W/m^2.K) is mazimum allowable scale resistance\n",Rd);
printf("\n\nAs Rd calculated (%f W/sq m.K)(OR 1.1*10^-3) is more than Rd given(%f W/sq m,K),the given heat exchanger is suitable\n",Rd,Rd_given);


