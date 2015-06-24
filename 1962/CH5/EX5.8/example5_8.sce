
//example 5.8
//page 211
clc; funcprot(0);
//initialisation of variable
pi=3.14;
mdot=0.0022;//mas flow rate
V1=220*5280/3600;//velocity
V=12000/pi/6^2*4;//velocity
V4=2*V-V1;//velocity
//part1
F=mdot*(V4-V1)*12000;
disp(F,"thurst force (lbs)");
//part2
neta=V1/V*100;
disp(neta,"efficiency (%)");
Hp=F*V1/500/neta*100;
disp(Hp,"theoritical horse power (hp)=");
delP=mdot/2*(V4^2-V1^2);
disp(delP,"change in pressure (lbs/ft^2)=");
clear
