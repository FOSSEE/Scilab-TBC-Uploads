// Finding applied voltage to the windinds with magnetic core
close;
clc;
syms t

w=377;//angular frequency

B=1.5*sin(w*t);
N=200;  
A=16*10^-4;//area
a=0.94;//steel occupies 0.94 times the gross core volume
e=N*A*a*diff(B,t);

disp(e,'applied Voltage = ');
