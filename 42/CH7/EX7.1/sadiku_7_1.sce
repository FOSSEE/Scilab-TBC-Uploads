clear;
clc;
a1=acos(0),a2=acos(2/29^.5),p=5,I=10;
H=I/(4*%pi*p)*(cos(a1)-cos(a2));
disp(H*1000,'H at (0,0,5) in mA ');