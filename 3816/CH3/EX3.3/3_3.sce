clc;
clear;
Mva=3.75;
V=10;
p=5;
S=144;
C=5;
S1=12;
x1=1;
x2=2;
thetaa1=0.116;
m=3;
r=(p*%pi)/S;
disp(r,'The slot angle is:')
g1=S/(p*m);
disp(g1,'The fractional value of slot per pole per phase is:')
Sab=g1*((3*x1)+2);
disp(Sab,'The spacing between the starts of Aand B is:')
Sac=g1*((3*x2)+4);
disp(Sac,'The spacing between the starts of A and C is:')
theta1=60*(1/2);
theta2=2*(1/2)*(1/2);
theta3=30*(1/2);
Kdn=(sin(theta1))/(24*sin(theta2));
Ken=cos(theta3);
Kwn=Kdn*Ken;
n=0:1:7;
disp(Kwn,'Kwn=')
Eph1=4.44*0.925*50*240*thetaa1;
Eph5=(5750*(0.049/0.925)*(11.2*100.6))/10000;
Eph7=(5750*(0.035/0.925)*(2.8*100.6))/10000;
disp(Eph7,Eph5,Eph1,'The emfs are:')
