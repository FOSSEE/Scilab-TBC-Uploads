//exa 2.16
clc;clear;close;
format('v',11);
L=30;//MW
//I=(32+32*L+1.68*L^2)*10^5;
t1=18;///hours
t2=6;///hours
//Full load 18 hours
I1=(32+32*L+1.68*L^2)*10^5*t1;//kJ
//Half load 6 hours
I2=(32+32*L/2+1.68*(L/2)^2)*10^5*t2
I=I1+I2;//kJ
disp(I,"(a) Heat input per day(kJ)");
E=L*t1+L/2*t2;//MWh///Energy produced in 24 hours
Lu=E/(t1+t2);//MW
Inew=(32+32*Lu+1.68*Lu^2)*10^5*(t1+t2);//kJ
saving=I-Inew;///kJ
saving=saving/(E*1000);//kJ/kWh
disp(saving,"(b) Saving in heat per kWh of energy(kJ/kWh) : ");
