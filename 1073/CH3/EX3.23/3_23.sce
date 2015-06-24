clc;
clear;
//Example 3.23
vfr=1200  ;  //Water flow rate in [l/h]
rho=0.98 ;   //Density of water in g/[cubic cm]
m_dot=vfr*rho    //Mass flow rate of water [kg/h]
m_dot2=m_dot/3600    //[kg/s]
Cp=4.187*10^3 ;   //[J/kg.K]
Di=0.025  ;  //Diameter in [m]
mu=0.0006 ;   //[kg/(m.s)]
Ai=%pi*((Di/2)^2)    //Area of cross-section in [m^2]
Nre=(Di/mu)*(m_dot2/Ai)    //Reynolds number
k=0.63 ; //for metal wall in [W/(m.K)]
Npr=Cp*mu/k;    //Prandtl number
//Since Nre>10000
//therefore ,Dittus boelter eqn for heating is 
Nnu=0.023*(Nre^(0.8))*(Npr^(0.4))
ho=5800   ; //Film heat coefficientW/(m^2.K)
hi=Nnu*k/Di    //Heat transfer coeffcient in [W/(sq m.K)]
Do=0.028 ;   //[m]
Di=0.025 ;   //[m]
xw=(Do-Di)/2;    //[m]
Dw=(Do-Di)/log(Do/Di);    //[m]
k=50  ;  //for metal wall in [W/(m.K)]
Uo=1/(1/ho+Do/(hi*Di)+xw*Do/(k*Dw));    //in [W/sq m.K]
dT=343-303 ; //[K]
dT1=393-303 ;   //[K]
dT2=393-343 ;   //[K]
dTm=(dT1-dT2)/log(dT1/dT2);    //[K]
Cp=Cp/1000;  //[in [kJ/kg.K]]
Q=m_dot*Cp*dT;    //Rate of heat transfer in [kJ/h]
Q=Q*1000/3600;    //[J/s] or [W]
Ao=Q/(Uo*dTm);    //Heat transfer area in [sq m]
//Also,..Ao=%pi*Do*L    ..implies that
L=Ao/(%pi*Do)    //[m]
printf("Length of tube required is %f m",round(L));
