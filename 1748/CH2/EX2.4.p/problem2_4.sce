//problem 2.4
clc;
clear;
close;
//given data :
format('v',5);
P=14;//No. of poles
f=50;//in Hz
N=415;//in rpm
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns*100;//in %
disp(S,"Slip(%) : ");
fr=S/100*f;//in Hz
disp(fr,"Rotor frequency(in Hz) : ");
