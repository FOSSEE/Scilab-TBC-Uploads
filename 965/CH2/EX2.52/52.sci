clc;
clear all;
disp("case 1:Without extra layer of lagging")
r1=160/2;//mm outer radius of pipe
r2=r1+40;//mm outer radius of layer 1
kA=0.8;// W/(m*C) thermal conductivity of pipe material
ho=10;// W/(m^2*C)
//ts= temperature of steam
//ta=temperature of air
L=1;//m length of pipe

//Q1=2*3.1416*(ts-ta)/(1000/(ho*r2)+(log(r2/r1))/kA));
//Q1=2*3.1416*(ts-ta)/1.34;
disp("Without extra layer of lagging Q1 = 2*3.1416*(ts-ta)/1.34")

disp("case 1:With extra layer of lagging")
r3=r2+40;//mm outer radius of layer 2
kB=1.2;// W/(m*C) thermal conductivity of insulation material
ho=10;// W/(m^2*C)

//Q2=2*3.1416*(ts-ta)/(1000/(ho*r3)+(log(r2/r1))/kA)+(log(r3/r2))/kB));
//Q2=2*3.1416*(ts-ta)/1.343;
disp("With extra layer of lagging Q2 = 2*3.1416*(ts-ta)/1.343")
//(Q2-Q1)/Q1=0.00223
t=0.00223*100;
disp("%",t,"percentage decrease in heat flow due to extra addition of insulation =" )

