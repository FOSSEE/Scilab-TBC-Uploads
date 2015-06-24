//Exa 2.29A
clc;
clear;
close;
format('v',9);

//Given Data : 
m=5;//Kg
//u=3.62*p*v

p1=550;//KPa
p2=125;//KPa
V1=0.25;//m^3
//p*V^(1/2)=C
n=1.2;
V2=(p1/p2)^(1/n)*V1;//m^3/Kg
W=(p1*V1-p2*V2)*10^5/(n-1)/1000;//KJ
delta_u=(3.62*p2*V2)-(3.62*p1*V1);//KJ/Kg
deltaU=m*delta_u;//KJ
disp(deltaU,"Change in internal energy in KJ : ");
Q=W+deltaU;//KJ
Q=Q/1000;//MJ
disp(Q,"Heat transfer in MJ : ");
