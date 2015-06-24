// Caption: Finding Induced voltage of a magnetic circuit 

close;
clc;
syms t

w=2*%pi*60//angular frequency

B=1.0*sin(w*t);
N=500;
A=9*10^-4;
e=N*A*diff(B,t);

disp(e,'Induced Voltage = ');
