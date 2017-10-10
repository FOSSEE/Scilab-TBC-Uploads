clear
clc
//Example 7.3 POWER NEEDED BY A PUMP
//Energy equation, V1=V2,(p1/gamma)+hp=(p2/gamma)+ht+hL
ht=0;
hL=3; //[m]
p1=70000; //[N/m^2]
p2=350000; //[N/m^2]
z1=30; //[m]
z2=40; //[m]
Gamma=9810; //specific weight[N/m^3]
hp=(p2-p1)/Gamma+(z2-z1)+hL //pump head[m]
Q=0.5; //rate of flow[m^3/s]
P=Gamma*Q*hp/10^3 //power[kW]
//1hp=0.746 kW
printf("\nPower that must be supplied to the flow by the pump \n in kilowatts = %.f kW \n in horsepower = %.f hp.\n",P,P/0.746)