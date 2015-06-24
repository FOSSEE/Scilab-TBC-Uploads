//Exa 2.3
clc;
clear;
close;
//Given data : 
P=10;//no. of poles
f=50;//in Hz
N=600;//in rpm
Nr=1440;//in rpm
f=P*N/120;//in Hz
//When P=2
P=2;//no. of poles
Ns=120*f/P;//in rpm
//When P=4
P=4;//no. of poles
Ns=120*f/P;//in rpm
disp("Induction motor speed is somewhat less than the synchronous speed. In this case indution motor speed, Nr is "+string(Nr)+" rpm.");
S=(Ns-Nr)*100/Ns;//Slip in %
disp("Percentage Slip(in %) : "+string(S));
disp("No. of poles : "+string(S));