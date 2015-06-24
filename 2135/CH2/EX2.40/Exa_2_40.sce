//Exa 2.40
clc;
clear;
close;
format('v',5);

//Given Data : 
mdot=1;//Kg/s
p1=40;//bar
T1=1047+273;//K
C1=200;//m/s
C2=100;//m/s
p2=1;//bar
Qdot=0;//W
Cp=1.05;//KJ/KgK
R=300;//Nm/KgK
Gamma=1.4;
//p*v=m*R*T
v1dot=mdot*R*T1/p1/10^5;//m^3/s
v2dot=(p1/p2)^(1/Gamma)*v1dot;//m^3/s
T2=p2*v2dot/p1/v1dot*T1;//K
Wsf_dot=Qdot-mdot*[Cp*(T2-T1)+(C2^2-C1^2)/2/1000];//KJ/s or KW
disp(Wsf_dot,"Output of turbine in KJ/s or KW : ");
