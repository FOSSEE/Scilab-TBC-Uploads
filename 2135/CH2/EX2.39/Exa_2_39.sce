//Exa 2.39
clc;
clear;
close;
format('v',8);

//Given Data : 
mdot=0.4;//Kg/s
C1=6;//m/s
p1=1;//bar
p1=p1*100;//KPa
V1=0.16;//m^3/Kg
u2subu1=88;//KJ/Kg
Qdot=-59;//W
Qdot=Qdot/1000;//KJ/s
W=0.059;//KJ/
Gamma=1.4;
Z2subZ1=0;
h2subh1=Gamma*u2subu1;//KJ
Wdot=Qdot-mdot*(h2subh1);//As C1=C2, C2^2-C1^2=0 & Z2-Zi=0
disp(Wdot,"Power in KW : ");
