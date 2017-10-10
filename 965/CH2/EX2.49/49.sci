clc;
clear all;

disp("to find rate of heat loss per unit length")

r1=1;//cm outer radius of pipe
r2=r1+0.2;//mm outer radius of insulation1
r3=r2+2;//mm outer radius of insulation2
kA=46;// W/(m*C)
kB=0.05;// W/(m*C)
thf=200;// degree C
tcf=30;// degree C
hhf=10;// W/(m^2*C)
hcf=5;// W/(m^2*C)
disp ("Q=Ai*Ui*delT")
//Ai=2*3.1416*r1*L
Ai=2*3.1416*r1;//m area per unit length
delT=(thf-tcf);
Ui=1/(1/hhf+(r1*10^(-2)*(log (r2/r1))/kA)+(r1*10^(-2)*(log (r3/r2))/kB)+(r1/r3)/hcf);
disp("W/(m^2*C)",Ui,"over all heat transfer coefficient Ui = ")
Ql=Ai*delT*Ui*10^(-2);
disp("W",Ql,"rate of heat loss per unit length Ql =  ")
