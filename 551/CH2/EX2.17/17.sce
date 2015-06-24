clc
T=1.25; //N.m
N=9500;
W1=2*%pi*N*T/1000; //kJ
p=101.3; //kPa
d=0.65; //m
A=%pi/4*d^2; //m^2
L=0.6; //m
W2=p*A*L; //kJ
Wnet=(-W1)+W2;
disp("The net work transfer for the system=")
disp(Wnet)
disp("kJ")