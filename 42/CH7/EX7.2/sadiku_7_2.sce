clear;
clc;
a1=acos(0),a2=acos(1),p=5,I=3;
Hz=I/(4*%pi*p)*(cos(a2)-cos(a1))*[.8 .6 0];
a2=acos(1),a1=acos(.6),p=4,I=3;
Hx=I/(4*%pi*p)*(cos(a2)-cos(a1))*[0 0 1];
H=Hx+Hz;
disp(H*1000,'H at (0,0,5) in mA ');