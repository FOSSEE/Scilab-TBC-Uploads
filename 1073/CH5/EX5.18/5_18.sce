clc;
clear;
//Example 5.18
m_dot=4500          //Benzene condensation rate in [kg/h]
lambda=394          //Latent heat of condensation of benzene in [kJ/kg]
Q=m_dot*lambda      //[kJ/h]
Q=Q*1000/3600       //[W]
Cpw=4.18            //[kJ/kg.K]
t1=295              //[K]
t2=300              //[K]
//For water :
mw_dot=Q/(Cpw*1000*(t2-t1))      //[kg/s]
rho=1000                    //[kg/m^3
V=mw_dot/rho          //Volumetric flow rate in [m^3/s]
u=1.05                //[m/s]
A=V/u                 //Cross-sectional area  required in [sq m]

//For tube:
x=1.6               //thickness in [mm]
x=x/1000            //[m]
Do=0.025            //[m]
Di=Do-2*x           //[m]
A1=(%pi*Di^2)/4      //Of one tube [sq m]
n=A/A1               //No. of tubes reuired   
n=round(n)
L=2.5               //Length of tube in [m]
Ao=n*%pi*Do*L       //Surface area for heat transfer in [sq  m]
Ts=353              //Condensing temp of benzene in [K]
T1=295              //Inlet temperature in [K]
T2=300              //Outlet temperature in [K]
dT1=Ts-T1           //[K]
dT2=Ts-T2           //[K]
dTlm=(dT1-dT2)/log(dT1/dT2)     //[K]
Uo=Q/(Ao*dTlm)          //[W/sq mK]
Ud=Uo                   //[W/sq m.K]

//OVERALL HEAT TRANSFER COEFFCIENT:
//Inside side:
T=(T2+T1)/2             //[K]

hi=1063*((1+0.00293*T)*u^0.8)/(Di^0.2)        //[W/sq m.K]
hio=hi*(Di/Do)                                  //[W/sq m.K]
Dw=(Do-Di)/log(Do/Di)                           //[m]
k=45                //For tube in [W/(m.)]

//Outside of tube:
mdot_dash=1.25/n                //[kg/s]
M=mdot_dash/(%pi*Do)            //[kg/(m.s)]
k=0.15                          //[W/(m.K)]
rho=880                         //[kg/m^3]
mu=0.35*10^-3                   //[N.s/sq m]
g=9.81                          //[m/s^2] Acceleration due to gravity
hm=(1.47*((4*mdot_dash)/mu)^(-1/3))/(mu^2/(k^3*rho^2*g))^(1/3)  //[W/sq m.K]
ho=hm                           //[W/sq m.K]
k=45                //[W/m]
Uo=1/(1/ho+1/hio+(x*Do)/(k*Dw))
//Uo=1/(1/ho+1/hio+(x*Do/(k*Dw)))     //Overall heat transfer coefficient in [W/sq m.K]
Uc=Uo                               //[W/sq m.K]

Rd=(Uc-Ud)/(Uc*Ud)                  //Maximum allowable sclae resistance in [K/W]
printf("\n Uc(%f) is in excess of Ud(%f),therefore we allow for reasonable scale resistance,\nRd=%f K/W\n",Uc,Ud,Rd);
printf("\n No.of tubes = %d ",n)
