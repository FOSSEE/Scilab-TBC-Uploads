//Example 2 //  T-type band pass filter
clc;
clear;
close;
//given data :
K=500;// in ohm
f1=4;// in kHz
f2=1;// in kHz
L1=K/(%pi*(f1-f2));
Ls=L1/2;
disp(Ls,"Inductance in each series arm,Ls(mH) = ")
C1=(f1-f2)*10^3/(4*%pi*K*f1*f2);
Cs=2*C1;
disp(Cs,"Capacity in each series arm,Cs(micro-F) = ")
L2=((f1-f2)*K)/(4*%pi*f1*f2);
disp(L2,"Shunt arm inductance,L2(mH) = ")
Csh=1*10^6/(%pi*(f1-f2)*10^3*K);
disp(Csh,"Capacity in shunt arm,Csh(micro-F) = ")
