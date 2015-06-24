//Exa 2.35
clc;
clear;
close;
format('v',7);

//Given Data : 
h1=3000;//KJ/Kg
C1=60;//m/s
h2=2762;//KJ/Kg
Q=0;//KJ
m=1;//Kg
W=0;//in case of nozzle
//Q-W=m*[(h2-h1)+(C2^2-C1^2)/2/1000+g*(Z2-Z1)/1000]
Z2subZ1=0;//as Z1=Z2 for horizontal nozzle
C2=sqrt(-(h2-h1)*2*1000+C1^2);//m/s
disp(C2,"Velocity at exit of nozzle in m/s : ");
A1=0.1;//m^3
v1=0.187;//m^3/Kg
mdot=A1*C1/v1;//Kg/s
disp(mdot,"Mass flow rate through the nozzle in Kg/s : ");
v2=0.498;//m^3/Kg
//mdot=A2*C2/v2=%pi/4*d^2*C2/v2
d2=sqrt(mdot/%pi*4*v2/C2);//m
disp(d2,"Diameter of nozzle at exit in meter : ");
