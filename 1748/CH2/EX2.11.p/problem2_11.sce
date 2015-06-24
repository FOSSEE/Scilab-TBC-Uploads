//problem 2.11
clc;
clear;
close;
//given data :
N=290;//in rpm
f=50;//in Hz
disp("Motor running at full load, no. of poles should be 20");
P=20;//no. of poles
Ns=120*f/P;//in rpm
Slip=(Ns-N)/Ns*100;//in %
disp("T is proportional to S/R2 but T is same");
Slip=2*Slip;//doubling R2 also doubles the slip
disp(Slip,"New value of slip is : ");
