clc
clear
//Initialization of variables
hc=613.3//btu/lbm
hb=138.9//btu/lbm
ha=138.9//btu/lbm
hd=713.4 //btu/lbm
ta=464.7 //R
t0=545.7 //R
v=8.150 //ft^3/lbm
//calculations
Qa=hc-hb
Qr=ha-hd
Wcd=Qa+Qr
cop=abs(Qa/Wcd)
hp=abs(4.71/cop)
carnot=abs(ta/(t0-ta))
rel=abs(cop/carnot)
mass=200/Qa
C=mass*v
//results
printf("Work done = %.1f Btu/lbm",Wcd)
printf("\n horsepower required per ton of refrigeration = %.3f hp/ton refrigeration",hp)
printf("\n Coefficient of performance actual = %.2f ",cop)
printf("\n Ideal cop = %.3f",carnot)
printf("\n relative efficiency = %.3f",rel)
printf("\n Mass flow rate = %.3f lbm/min ton",mass)
printf("\n Compressor capacity = %.2f cfm/ton",C)
