clc;
clear;
//Example 5.4
mc_dot=1000         //[kg/h]
mc_dot=mc_dot/3600      //[kg/s]
mh_dot=250          //[kg/h]
mh_dot=mh_dot/3600  //[kg/s]
Cpc=4187          //[J/(kg.K)]
Cph=3350        //[W/K]
w=mc_dot*Cpc        //[W/K]
l=mh_dot*Cph        //[W/K]
C=mh_dot*Cph/(mc_dot*Cpc)
U=1160      //[W/sq m.K]
A=0.25      //Heat transfer surface for exchanger in [sq m]
ntu=U*A/(mh_dot*Cph)    //
E=(1-%e^(-ntu*(1+C)))/(1+C)     //Effectiveness of heat exchanger
T1=393      //Inlet temperature in [K]
t1=283      //Cooling water [K]
T2=T1-E*(T1-t1)     //Outlet T of hot liquid 

t2=C*(T1-T2)+t1     //[K]
printf("\n\nEffectiveness of heat exchanger is %f\n",E);
printf("\nOutlet temperature of hot liquid is %f\n",T2);
printf("\nOutlet temperature of water is %f\n",t2)
