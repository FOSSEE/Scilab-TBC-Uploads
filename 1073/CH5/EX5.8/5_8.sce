clc;
clear;
//Example 5.8
mdot=7250;           //Nitrobenzene in shell in [kg/h]
Cp=2.387;            //[kJ/(kg.K)]
mu=7*10^-4 ;         //Pa.s
k=0.151;             //[W/m.K]
T1=400;              //[K]
T2=317;              //[K]
t1=305;              //[K]
t2=345;              //[K]
dT1=T1-t2              //[K]
dT2=T2-t1              //[K]
dTlm=(dT1-dT2)/log(dT1/dT2)     //[K]
Q=mdot*Cp*(T1-T2)   //[kJ/h]
Q=Q*1000/3600           //[W]
n=166;                   //no of tubes
L=5;                     //[m]
Do=0.019;                //[m]
Di=0.015                 //[m]
Ao=n*%pi*Do*L           //[sq m]
Uo=Q/(Ao*dTlm)          //[W/sq m.K]
Ud=Uo
//Shell side heat transfer coefficient
Pt=0.025                //[m]
C_dash=Pt-(0.5*Do+0.5*Do)

//Shell side crossflow area
B=0.15              //[m]
id=0.45     //[m]
as=id*C_dash*B/Pt       //[sq m]
//As there are two shell passes,area per pass is :
as_dash=as/2            //[sq m]

//Equivalent diameter of shell 
De=4*(Pt^2-(%pi/4)*Do^2)/(%pi*Do)       //[m]

//Mass velocity on shell side
Gs=mdot/as_dash        //[kg/m^2.h]
Gs=Gs/3600              //[kg/m^2.s]
mu=7*10^-4              //Pa.s
Cp=Cp*1000              //J/kg.K
Nre=De*Gs/mu    //Reynold number
Npr=Cp*mu/k     //Prandtls number
Nnu=0.36*Nre^0.55*Npr^(1.0/3.0) //Nusselts number
hi=1050             //[W/sq m .K]
ho=Nnu*k/De         //[W/sq m.K]
Uo=1/(1/ho+(1/hi*(Do/Di)))          //[W/sq m K]
Uc=Uo
Rd=(Uc-Ud)/(Uc*Ud)                  //m^2.K/W
printf("\n Fouling factor=Sclae resistance=%f m^2.K/W\n",Rd);
