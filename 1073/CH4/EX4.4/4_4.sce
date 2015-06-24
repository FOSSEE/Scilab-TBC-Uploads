clc;
clear;
//Example 4.4
e=0.9   //Emissivity
L=1 //[m]
Do=50   //[mm]
Do=Do/1000  //[m]
sigma=5.67*10^-8    //[W/(m^2.K^4)]
T1=415  //[K]
T2=290  //[K]
dT=T1-T2    //[K]
hc=1.18*(dT/Do)^(0.25)  //[W/sq m.K]
A=%pi*Do*L  //Area in [sq m]
Qc=hc*A*dT //Heat loss by convection W/m
Qr=e*sigma*A*(T1^4-T2^4)    //Heat loss by radiation per length W/m
Qt=Qc+Qr    //Total heat loss in [W/m]
printf("\n Total heat loss by convection is %f W/m",Qt);
