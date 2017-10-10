clc;
clear all;
disp("case 1:to find out thickness of insulation")
r1=120/2;//mm inner radius of pipe
r2=160/2;//mm outer radius of pipe
kA=42;// W/(m*C) thermal conductivity of pipe material
kB=0.8;// W/(m*C) thermal conductivity of insulation material
thf=150;// degree C
tcf=20;// degree C
hcf=100;// W/(m^2*C)
hcf=30;// W/(m^2*C)
r=150/2;//mm mean radius 
//A=2*3.1416*r*L area for heat transfer
//Q=2.1*2*3.1416*r*L 
//Q=2*3.1416*L*(thf-tcf)/(1000/(hhf*r1)+(log(r2/r1))/kA+(log(r3/r2))/kB+1000/(hcf*r3));
//2.1*2*3.1416*r*L = 2*3.1416*L*(thf-tcf)/(1000/(hhf*r1)+(log(r2/r1))/kA+(log(r3/r2))/kB+1000/(hcf*r3))
//2.1*r = (thf-tcf)/(1000/(hhf*r1)+(log(r2/r1))/kA+(log(r3/r2))/kB+1000/(hcf*r3))
//(log(r3/r2))/kB+1/(30*r3)=0.6524
//1.25*log(r3/r2)+1/(30*r3)=0.6524
// By trial and error r3=0.105m= 105mm
disp(" By trial and error, r3=0.105m= 105mm ")
r3=105;//mm 
t=r3-r2;

disp("m",t,"Thickness of insulation t =")




