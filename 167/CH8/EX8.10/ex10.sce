//example 10
//exergy destruction during heat conduction
clear
clc
To=273 //temperature of outdoor in K
Tin=293 //temperature of inner surface of brick wall in K
Tout=278 //temperature of outer surface of brick wall in K
Q=1035 //rate of heat transfer through wall in W
Xdestroyed=Q*(1-To/Tin)-Q*(1-To/Tout) //exergy destruction in wall in W
Th=300 //temperature of house in K
Xdestroyedtotal=Q*(1-To/Th)-Q*(1-To/To) //the rate of total exergy destruction during this heat transfer process
printf("\n Hence, the rate of exergy destruction in the wall is = %.1f W. \n",Xdestroyed);
printf("\n Hence, rate of total exergy destruction associated with this heat transfer process is=%.1f W. \n",Xdestroyedtotal);