//Example 4.19.4: current
clc;
clear;
close;
//given data :
format('v',4)
rd=150*10^3;// in ohm
Rm=50;// in ohm
Rs=1000*10^3;// in ohm
gm=0.0052;//in mho
rd1=rd/((gm*rd)+1);
V0=gm*((rd1*Rs)/(rd1+Rs))
R0=(2*Rs*rd1)/(Rs+rd1)
I=V0/(R0+Rm);
disp(I*10^3,"curent,I(mA) = ")
