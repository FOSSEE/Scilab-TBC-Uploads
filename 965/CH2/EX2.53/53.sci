clc;
clear all;
disp("case 1:Without extra layer of lagging")
r1=70/2;//mm inner radius of pipe
r2=85/2;//mm outer radius of pipe
r3=r2+35;//mm radius of insulation layer 1
r4=r3+25;//mm radius of insulation layer 2
L=50;//m
kA=45;// W/(m*C) thermal conductivity of pipe material
kB=0.15;// W/(m*C) thermal conductivity of layer 1
kC=0.075;// W/(m*C) thermal conductivity of layer 2
hhf=220;// W/(m^2*C)
hcf=6.5;// W/(m^2*C)
ts= 350;// degree Ctemperature of steam
ta=30;// ambient temperature 

Q=2*3.1416*L*(ts-ta)/(1000/(hhf*r1)+(log(r2/r1))/kA+(log(r3/r2))/kB+(log(r4/r3))/kC+1000/(hcf*r4));
disp("W",Q,"Loss of heat")

disp("To find overall heat transfer coefficients Ui,Uo")
//Q=Uo*Ao*delT=Ui*Ai*delT
delT=ts-ta;
Ao=2*3.1416*r4*10^(-3)*L;//m^2 
Ai=2*3.1416*r1*10^(-3)*L;//m^2 
Ui=Q/(Ai*delT);//W/(m^2*C)
Uo=Q/(Ao*delT);//W/(m^2*C)
disp("W/(m^2*C)",Uo,"overall heat transfer coefficient Uo = ")
disp("W/(m^2*C)",Ui,"overall heat transfer coefficient Ui = ")



