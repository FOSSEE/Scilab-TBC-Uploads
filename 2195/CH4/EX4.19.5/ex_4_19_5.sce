//Example 4.19.5: resistance
clc;
clear;
close;
//given data :
V1=1;//in V
I=1.5*10^-3;//in A
rd=200*10^3;// in ohm
Rm=50;// in ohm
Rs=600*10^3;// in ohm
gm=0.005;//in mho
rd1=rd/((gm*rd)+1);
V0=gm*((rd1*Rs)/(rd1+Rs))*V1
R0=(2*Rs*rd1)/(Rs+rd1)
R_cal=(V0/I)-Rm-R0;
disp(R_cal,"resistance ,R_cal(ohm) = ")
// answer is wrong in book
