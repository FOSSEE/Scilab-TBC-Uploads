//1.34
clc;
trr=2.5*10^-6;
//b=di/dt
b=35*10^6;
Qrr=0.5*trr^2*b*10^6;
printf(" Stored charge= %.3f uC",Qrr)
Irr=(2*Qrr*10^-6*b)^0.5;
printf(" Peak reverse current= %.1f A",Irr)