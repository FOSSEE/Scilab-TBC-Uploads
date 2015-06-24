//example 16.3
clc; funcprot(0);
// Initialization of Variable
r1=0.25;//m
r2=0.275;//m
T1=300;
T2=77;
k=0.0017;
hfg=2.0e5;
pi=3.14;
q=(T1-T2)/(1/4/pi/k*(1/r1-1/r2)+1/20/4/pi/r2^2);
disp(q,"heat transfer in W");
mdot=q/hfg;
k=mdot/804*1000*3600*24;
disp(k,"mdot/rho in liters/day")
clear()
