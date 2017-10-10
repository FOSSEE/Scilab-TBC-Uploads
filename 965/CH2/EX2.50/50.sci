clc;
clear all;
disp("case 1:to find rate of heat transfer per unit length")
r1=100/2;//mm inner radius of pipe
r2=120/2;//mm outer radius of pipe
kA=185;// W/(m*C) thermal conductivity of pipe material
thf=110;// degree C
tcf=30;// degree C
hcf=15;// W/(m^2*C)

Ql=2*3.1416*(thf-tcf)/((log(r2/r1))/kA+1000/(hcf*r2));

disp("W",Ql,"rate of heat transfer per unit length Ql =  ")

disp("case 2:to find rate of heat transfer per unit length")

r3=r2+50;//mm insulation radius
kA=185;// W/(m*C) thermal conductivity of pipe material
kB=0.2;// W/(m*C) thermal conductivity of insulation material
thf=110;// degree C
tcf=30;// degree C

hcf=15;// W/(m^2*C)

Ql=2*3.1416*(thf-tcf)/((log(r2/r1))/kA+(log(r3/r2))/kB+1000/(hcf*r3));

disp("W",Ql,"rate of heat transfer per unit length of pipe Ql =  ")
