clc
//initialization of variables
v=600 //ft/sec
T=60+460 //R
P=14.7 //lb/in^2
Pratio=6
Tin=1540+460 //R
cp=0.264
cpratio=1.35
//calculations
Pt2byP1=(1+ (cpratio-1)*v^2 /(cpratio*2*32.2*53.3*T))^(3.86)
Pt3byP1=Pt2byP1*Pratio
eta=1- 1/(Pt3byP1)^0.259
Tt3=T*(Pt3byP1)^((cpratio-1)/cpratio)
Q=cp*(Tin-Tt3)
V6=sqrt(eta*2*32.2*778*Q + v^2)
Fn=(V6-v)/32.2
//resullts
printf("Thermal efficiency = %.2f ",eta)
printf("\n thrust per pound of air per sec = %.1f lb-sec/lbm",Fn)
//The answers are a bit different due to rounding off error in textbook
