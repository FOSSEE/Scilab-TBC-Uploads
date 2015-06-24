//Exa 2.44
clc;
clear;
close;
format('v',8);

//Given Data : 
v=0.001;//m^3/Kg
DisRate=10/60;//m^3/s
p1=100;//KN/m^2
p2=300;//KN/m^2
Z1=3;//m
Z2=9;//m
d1=0.25;//m
d2=0.17;//m
Qdot=0;//KJ/s(Adiabatic process)
//A1*C1=A2*C2=DisRate
C1=DisRate/(%pi/4*d1^2);//m/s
C2=DisRate/(%pi/4*d2^2);//m/s
mdot=DisRate/v;//Kg/s
g=9.81;//gravity constant
delta_u=0;
//Qdot-Wdot=mdot*(delta_u+p2*v2-p1*v1+C2^2-C1^2+g*(Z2-Z1))
Wdot=mdot*(delta_u+p2*10^3*v-p1*10^3*v+(C2^2-C1^2)/2+g*(Z2-Z1))-Qdot;//J/s
Wdot=Wdot/1000;//KJ/s or KW
disp(Wdot,"Power required to drive the pump in KW : ");
