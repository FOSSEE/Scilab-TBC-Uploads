//Exa 2.2
clc;
clear;
close;
//Given data : 
P=8;//no. of poles
f=50;//in Hz
N=700;//in rpm
//Part (a) :
Ns=120*f/P;//in rpm
disp(Ns,"Synchronous speed in rpm : ");
//Part (b) :
S=(Ns-N)*100/Ns;//in %
disp(S,"Slip(in %) : ");
//Part (c) :
//At the time of stsrt S=1;
fdash=f;//in Hz
disp(fdash,"Rotor frequeny at the time of starting(in Hz) : ");
//Part (d) :
fdash=(S/100)*f;//in Hz
disp(fdash,"Rotor frequeny at the given speed(in Hz) : ");
