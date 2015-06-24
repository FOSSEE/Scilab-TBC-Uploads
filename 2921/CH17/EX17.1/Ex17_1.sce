clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-17.1 Page No.379\n');

hp=5;
n=1750;
T=63000*hp/n;

//Torsional stress in the shaft
D=0.75;
Z1=%pi*D^3/16;

Ss=T/Z1;

mprintf('\n Torsional stress in the shaft = %f lb/in^2.',Ss);

//Load at the gear pitch circle
Nt=40;
Pd=10;
Dp=Nt/Pd;

Ft=2*T/Dp;

mprintf('\n Load at gear pitch circle = %f lb.',Ft);

//Resultant force on the shaft
theta=20*%pi/180;
Fr=Ft/cos(theta);

mprintf('\n Resultant force = %f lb.',Fr);

//Maximum moment
L=15;
Mm=Fr*L/4;

mprintf('\n Maximum moment = %f in-lb.',Mm);

//Stress
D2=0.75;
Z2=%pi*D2^3/32;
Z2=round(Z2*1000)*10^-3;

S=Mm/Z2;

mprintf('\n Stress = %f lb/in^2.',S);

//Note-There is an error in the answer given in textbook
