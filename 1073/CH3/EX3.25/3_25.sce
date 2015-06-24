clc;
clear;
//Example 3.25
mo_dot=60   //Mass flow rate of oilin [g/s]
mo_dot=6*10^-2  //[kg/s]
Cpo=2.0     //Specific heat of oil in [kJ/(kg.K)]
T1=420  //[K]
T2=320  //[K]
Q=mo_dot*Cpo*(T1-T2)    //Rate of heat flow in [kJ/s]
mw_dot=mo_dot   //Mass flow rate of water   //kg/s
t1=290  //[K]
Cpw=4.18    //[kJ/(kg.K)]
//For finding outlet temperature of water
t2=t1+Q/(mw_dot*Cpw)    //[K]
dT1=T1-t2   //[K]
dT2=T2-t1   //[K]
dTm=(dT1-dT2)/log(dT1/dT2)  //[K]
ho=1.6  //Oil side heat transfer coefficient in [kW/(sq m.K)]
hi=3.6  //Water side heat transfer coeff in [kW/(sq m.K)]
//Overall heat transfer coefficient is:
U=1/(1/ho+1/hi) //[kW/(m^2.K)]

A=Q/(U*dTm) //[sq m]
Do=25   //[mm]
Do=Do/1000  //[m]
L=A/(%pi*Do)    //Length of tube in [m]
printf("\nOutlet temperature of water is %f K \n",round(t2));
printf("Area of heat transfer required is %f sq m\n",A);
printf("Length of tube required is %f m",L)


