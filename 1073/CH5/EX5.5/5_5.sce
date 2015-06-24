
clc;
clear;
//Example 5.5
Cpc=4187                //Specific heat of water in [J/(kg.K)]
Cph=2000                //Sp heat of oil in [J/(kg.K)]
mc_dot=1300/3600        //[kg/s]
mh_dot=550/3600         //[kg/s]
w=mc_dot*Cpc        //[W/K]
o=mh_dot*Cph        //[W/K]
//Heat capacity of rate of hot fluid is smaller than water
U=1075          //[W/sq m.K]
A=1       //[sq m]
ntu=(U*A)/(mh_dot*Cph)    
C=mh_dot*Cph/(mc_dot*Cpc)   
E=(1-%e^(-ntu*(1-C)))/(1-C*%e^(-ntu*(1-C)))     //Effeciency
T1=367          //[K]
t1=288          //[K]
T2=T1-E*(T1-t1)                 //Outlet temperature [K]
T2=291.83                   //Approximated in book without precise calculation
t2=C*(T1-T2)+t1                 //[K]
Q=mh_dot*Cph*(T1-T2)            //[W]
printf("\n\nEffectiveness of exchanger is %f\n",E);
printf("\nOutlet temperature of oil is %f K\n",T2);
printf("\nOutlet temperature of water is %f K\n",t2);
printf("\nRate of heat transfer is %f W",Q);
