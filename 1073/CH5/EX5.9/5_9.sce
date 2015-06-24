clc;
clear;
//Example 5.9
k=0.628         //W/(m.K)
rho=980     //[kg/m^3]
mu=6*10^-4      //kg/(m.s)
Cpw=4.187        //kJ/(kg.K)
Cp=Cpw*10^3      //J/(kg.K)
Di=25           //[mm]
Di=Di/1000      //[m]
mw_dot=1200*10^-3*rho        //Mass flow rate of water [kg/h]
mw_dot=mw_dot/3600            //[kg/s]
Ai=(%pi*Di^2)/4              //Inside area of tube in sq m
G=mw_dot/Ai                 //kg/m^2.s
Nre=Di*G/mu                 //Reynolds number
Npr=Cp*mu/k                 //Pranddtl number
//Inside heat transfer coefficient
Nnu=0.023*Nre^0.8*Npr^0.4       //Nusselt number
hi=Nnu*k/Di             //[W/sq m.K]
ho=6000     //[W//sq m.K]
Do=0.028        //[m]
Dw=(Do-Di)/log(Do/Di)       //[m]
x=(Do-Di)/2                  //[m]
k2=348.9            //thermal conductivity of metal in [W/m.K]
Uo=1/((1/ho)+(1/hi)*(Do/Di)+(x/k2)*(Do/Dw))  //[W/sq m.K]
t1=303          //[K]
t2=343          //[K]
Q=mw_dot*Cpw*(t2-t1)        //[kJ/h]
Q=Q*1000              //[W]
Ts=393                      //[K]

dT1=Ts-t1                   //[K]
dT2=Ts-t2                   //[K]
dTlm=(dT1-dT2)/log(dT1/dT2)     //[K]
Ao=Q/(Uo*dTlm)          //[sq m]
L=Ao/(%pi*Do)           //Length
printf("\n therefore length of tube required is %f m\n",L);

