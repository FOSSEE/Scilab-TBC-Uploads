//Exa 2.36
clc;
clear;
close;
format('v',6);

//Given Data : 
p1=4;//bar
p2=1;//bar
T1=40+273;//K
T2=2.5+273;//K
C1=40;//m/s
C2=200;//m/s
W=52;//KJKg
m=1;//Kg
Cp=1.005;//KJ/KgK 
Z2subZ1=0;//as Z1=Z2 
Q=W+m*[Cp*(T2-T1)+(C2^2-C1^2)/2/1000];//KJ/Kg
disp(Q,"Heat transfered per Kg of air in KJ/Kg : ");
