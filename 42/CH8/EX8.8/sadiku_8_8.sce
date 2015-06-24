clear;
clc;
format('v',6);
H1=[-2 6 4],Uo=4*%pi*10^-7,Ur=5;
U1=Uo*Ur;
M1=(Ur-1)*H1;
disp(M1,'M = ');
B1=U1*H1;
disp(B1*10^6,'B in uW/m^2');