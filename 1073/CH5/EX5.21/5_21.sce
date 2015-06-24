clc;
clear;
//Example 5.21
mc_dot=3.783;        //Cold water flow rate[kg/s]
mh_dot=1.892;       //Hot water flow rate [kg/s]
Cpc=4.18;           //Sp heat of cold water [kJ/(kg.K)]
T1=367;             //[K]
t2=328;             //[K]
t1=311;             //[K]
Cph=4.18;           //Specific heat of hot water [kJ/(kg.K)]
rho=1000;            //Density [kg/m^3]
D=0.019;             //Diameter of tube in [m]
U=1450 ;             //Overal heat transfer coefficient in [W/sq m.K]   
T2=T1-mc_dot*Cpc*(t2-t1)/(mh_dot*Cph)   //[K]
Q=mc_dot*Cpc*(t2-t1)        //[kJ/s]
Q=Q*1000                    //[W]
//For counterflow heat exchanger
dT1=T1-t2                   //[K]
dT2=17;                     //[K]
dTlm=(dT1-dT2)/log(dT1/dT2) //[K]
lmtd=dTlm                   //LMTD 
Ft=0.88                     //LMTD correction factor
A=Q/(U*dTlm)                //[sq m]
u=0.366;                    //Velocity through tubes[ms^-1]
Ai=mc_dot/(rho*u)           //Total flow Area in [sq m]
n=Ai/((%pi/4)*(D^2))        //No. of tubes 
L=1                         //Per m length[m]
sa=%pi*D*L                  //S.S per tube per 1 m length
L=A/(n*%pi*D)               //Length of tubes in [m]
printf("\nThe length is more than allowable 2.44 m length,so we must use more than one tube \n");

//For 2passes on the tube side
A=Q/(U*Ft*lmtd)     //[sq m]
L=A/(2*n*%pi*D)     //Length in [m]
printf("\n This length is within 2.44 m requirement,so the design choice is \n\n");
printf("\nType of heat exchanger : 1-2 Shell and tube heat exchanger\n")
printf("\nNo of tubes per pass= %d\n",round(n));
printf("\nLength of tube per pass=%f m\n ",L);
