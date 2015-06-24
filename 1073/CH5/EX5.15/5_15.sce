clc;
clear;
//Example 5.15

//CASE I:
Cp=4*10^3;           //[J/kg.K]
t1=295;              //[K]
t2=375;              //[K]
sp=1.1;              //Specific gravity of liquid 
v1=1.75*10^-4;        //Flow of liquid in [m^3/s]
rho=sp*1000         //[kg/m^3]
m_dot=v1*rho         //[kg/s]
Q=m_dot*Cp*(t2-t1)  //[W]
T=395;               //[K]
dT1=T-t1            //[K]
dT2=T-t2            //[K]
dTlm=(dT1-dT2)/log(dT1/dT2) //[K]
U1A=Q/dTlm          //[W/K]

//CASE-II
v2=3.25*10^-4                   //Flow in [m^3/s]
T2=370                          //[K]
m_dot=v2*rho          //[kg/s]
Q=m_dot*Cp*(T2-t1)                //[W]
dT1=T-t1                          //[K]
dT2=T-T2                          //[K]
dTlm=(dT1-dT2)/log(dT1/dT2)       //[K]
U2A=Q/dTlm                        //[W/K]
//since u is propn to v
//hi =C*v^0.8

U2_by_U1=U2A/U1A                

ho=3400                         //Heat transfer coeff for condensing steam in [W/sq m.K]
C=poly(0,"C")
//Let C=1 and v=v1
//C=1;
v=v1;                           //=1.75*10^-4 m^3/s
hi=C*v^0.8
U1=1/(1/ho+1/hi)                 //

//When v=v2
v=v2;
hi=C*v^0.8
U2=1/(1/ho+1/hi)               //

//Since U2=1.6U1
//On solving we get:
C=142497
v=v1
hi=C*v^0.8
U1=1/(1/ho+1/hi)                 //
A=U1A/U1                //Heat transfer area in [sq m]
printf("\n Overall heat transfer coefficient is %f W/sq m.K and\n\nHeat transfer area is %f sq m",U1,A);

