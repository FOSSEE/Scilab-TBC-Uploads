clc;
clear;
//Example 5.2
ma_dot=300*1000/24          //Mass flow rate of acid in [kg/h]
mw_dot=500*1000/24          //Mass flow rate of water in [kg/h]
Cp1=1.465                    //[kJ/kg.K]
T1=333                      //[K]
T2=313                      //[K]
Q=ma_dot*Cp1*(T1-T2)         //[kJ/h]
Q=Q*1000/3600               //[W]
Cp2=4.187                   //[kJ/kg.K]
t1=288                      //[K]
t2=(Q/(mw_dot*Cp2))+t1       //[K]
dT1=T1-t2                   //[K]
dT2=T2-t1                   //[K]    
dTlm=(dT1-dT2)/log(dT1/dT2) //[K]
dTlm=32.26              //Approximation in [K]
//Inner pipe
m_dot=12500                 //[kg/h]
Di=0.075                    //[m]
Ai=(%pi/4)*Di^2             //[sq m]
G=ma_dot/Ai                 //[kg/m^2.h]
G=G/3600                    //[kg/m^2.s]
mu=0.0112                   //[kg/m.s]
k=0.302                     //W/(m.K)
Nre=Di*G/mu                 //Reynold number
Npr=Cp1*10^3*mu/k                //Prandtl number
hi=(k/Di)*0.023*(Nre^0.8)*(Npr^0.3)     //W/sq m.K
Do=0.1                      //[m]
hio=hi*Di/Do                //W/sq m.K
D1=0.1                      //[m]
D2=0.125                    //[m]
De=(D2^2-D1^2)/D1           //[m]
Aa=(%pi/4)*(D2^2-D1^2)      //[sq m]
Ga=mw_dot/Aa                //[kg/m^2.h]
Ga=Ga/3600                  //[kg/sq m.s]
mu=0.0011                   //[kg/m.s]
Nre=De*Ga/mu                //Reynolds number
k=0.669                     //for water
Npr=Cp2*10^3*mu/k                 //Prandtl number
ho=(k/De)*0.023*(Nre^0.8)*Npr^0.4    //[W/sq m.K]
xw=(Do-Di)/2                     //[m]
Dw=(Do-Di)/log(Do/Di)           //[m]
kw=46.52                    //thermal conductivity of wall in [W/m.K]
Uc=1/(1/ho+1/hio+xw*Do/(kw*Dw))  //[W/sq m.K]
Ud=Uc                       //As dirt factor values are not given
Ud=195.32           //Approximation
A=Q/(Ud*dTlm)             //[sq m]

L=A/(%pi*Do)                //[sq m]
printf("\nArea =%f m^2,\nLength fo pipe required =%f m(approx)",A,L)
