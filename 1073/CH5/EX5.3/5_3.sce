clc;
clear;
//Example 5.3
me_dot=5500 ;        //[kg/h]
me_dot1=me_dot/3600          //[kg/s]
Di=0.037     ;   //I.D of inner pipe in [m]
Ai=(%pi/4)*Di^2         //[sq m]
G=me_dot1/Ai             //[kg/sq m.s]
mu=3.4*10^-3   ;         //[Pa.s] or [kg/(m.s)]
Nre=Di*G/mu             //Reynolds number
Cp=2.68       ;  //[kJ/kg.K]
Cp1=Cp*10^3          //[J/kgK]
k=0.248        ; //[W/m.K]
Npr=Cp1*mu/k     //Prandtl number
//Nre is greater than 10,000,Use Dittus-Boelter eqn:
Nnu=0.023*(Nre^0.8)*(Npr^0.3)       //Nusselt number
hi=k*Nnu/Di                 //[W/sq m.K]
T2=358          //[K]
T1=341          //[K]
Cp2=1.80            //[kJ/kg.K]
t2=335              //[K]
t1=303              //[K]
mt_dot=me_dot*Cp*(T2-T1)/(Cp2*(t2-t1))  //[kg/h]
mt_dot=mt_dot/3600                      //[kg/s]
D1=0.043                //[m]
D2=0.064            //Inside dia of outer pipe
De=(D2^2-D1^2)/D1           //Equivalent diameter [m]
Aa=%pi/4*(D2^2-D1^2)         //[sq m]
Ga=mt_dot/Aa                    //kg/(sq m.s)
mu2=4.4*10^-4                    // Viscosity of toluene Pa.s
k2=0.146                    //For toluene [W/m.K]
Cp2=1.8*10^3            //J/kg.K
Nre=De*Ga/mu2            //Reynolds number
Npr=Cp2*mu2/k2          //Prandtl number
Nnu=0.023*Nre^0.8*Npr^0.4       //Nusselt number
ho=k2*Nnu/De                     //W/(sq m.K)
Dw=(D1-Di)/log(D1/Di)             //[m]
x=0.003                     //Wall thickness in [m]
Uo=1/(1/ho+(1/hi)*(D1/Di)+(x*D1/(46.52*Dw)))     //[W/sq m.K]
dT1=38      //[K]
dT2=23      //[K]
dTlm=(dT1-dT2)/log(dT1/dT2)                 //[K]
Q=me_dot1*Cp*(T2-T1)       //[kJ/s]
Q=Q*1000                //[J/s]
L=Q/(Uo*%pi*D1*dTlm)    //[m]
printf("\nTotal lenggth of double pipe heat exchanger is %f m",L)

