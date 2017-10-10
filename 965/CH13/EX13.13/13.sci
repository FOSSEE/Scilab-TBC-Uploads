clc;
clear all;
disp("diffusion flux rate")
p=2.5*10^5;// N/m^2
r1=12/1000;//m
r2=24/1000;//m
T=25+273;//K
R=4160;//J/(kg.K)
D=2.1*10^(-8);// m^2/s
S=0.055*2.5;//m^3/m^3 rubber tubing
V=S;
Ch1=p*V/(R*T);// kg/m^3 of rubber tuning
disp("kg/m^3",Ch1,"at inner surface of pipe Ch1 =")
Ch2=0;
L=1;//m
x=r2-r1;//m
Am=2*3.1416*L*(r2-r1)/log(r2/r1);//m^2
disp("m^2",Am,"Am =")
m=D*(Ch1-Ch2)*Am/x;
m
disp("kg/s.m",m,"diffusion flux through the cylinder = ")






