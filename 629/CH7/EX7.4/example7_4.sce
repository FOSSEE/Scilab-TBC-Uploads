clear
clc
//Example 7.4 POWER PRODUCED BY A TURBINE
//Energy equation, V1=V2=0,(p1/gamma)+hp=(p2/gamma)+ht+hL
hp=0;
hL=1.5; //head loss[m]
p1=0;
p2=0;
z1=61; //[m]
z2=0; //[m]
Gamma=9810; //specific weight[N/m^3]
ht=(p1-p2)/Gamma+(z1-z2)-hL //turbine head[m]
Q=14.1; //rate of flow[m^3/s]
Pi=Gamma*Q*ht/10^6 //power input[MW]
eta=0.87; //efficiency 
Po=eta*Pi //power output[MW]
printf("\nThe rate of power generation is %.2f MW.\n",Po)