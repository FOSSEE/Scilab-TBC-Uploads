//Exa 2.42
clc;
clear;
close;
format('v',7);

//Given Data : 
m=12/60;//Kg/s
C1=12;//m/s
p1=1*100;//KPa
v1=0.5;//m^3/Kg
C2=90;//m/s
p2=8*100;//KPa
v2=0.14;//m^3/Kg
deltah=150;//KJ/Kg
Qdot=-700/60;//KJ/s
//Assuming deltaPE=0=g*(Z2-Z1)
//Qdot-Wdot=mdot*(deltah+(C2^2-C1^2)/2/1000+g*(Z2-Z1)/1000)
Wdot=Qdot-m*(deltah+(C2^2-C1^2)/2/1000);//KW
disp(abs(Wdot),"Power required to drive the compressor in KW : ");
//A1C1/v1=A2C2/v2
d1BYd2=sqrt(C2/v2*v1/C1);
disp(d1BYd2,"Ratio of inlet to outlet pipe diameter : ");
