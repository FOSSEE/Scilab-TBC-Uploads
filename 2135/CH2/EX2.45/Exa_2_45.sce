//Exa 2.45
clc;
clear;
close;
format('v',8);

//Given Data : 
mdot=5;//Kg/s
T1=27+273;//K
//Z1=Z2
deltaPE=0;
Wdot=-100;//KW
C1=60;//m/s
C2=150;//m/s
q=-2;//KJ/Kg
Cp=1.05;//KJ/Kg
Qdot=mdot*q;//KJ/s
delta_h=Cp;//KJ/Kg
//Qdot-Wdot=mdot*(delta_h*(T2-T1)+(C2^2-C1^2)/2/1000+g*(Z2-Z1))/1000)
T2=((Qdot-Wdot)/mdot-(C2^2-C1^2)/2/1000)/delta_h+T1;//K
disp(T2,"Exit temperature in K : ");
