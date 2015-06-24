clc;
clear;
//Example 4.5
e=0.85
sigma=5.67*10^-8    //[W/sq m.K]
T1=443  //[K]
T2=290  //[K]
dT=T1-T2    //[K]
hc=1.64*dT^0.25     //W/sq m.K
Do=60   //[mm]
Do=Do/1000  //[m]
L=6 //Length [m]
A=%pi*Do*L  //Surface area of pipe in [sq m]
Qr=e*sigma*A*(T1^4-T2^4)    // Rate of heat loss by radiaiton W
Qc=hc*A*(T1-T2) // Rate of heat loss by convection [W]
Qt=Qr+Qc    //Total heat loss  [W]
printf("\n Total heat loss is %d W",round(Qt))
