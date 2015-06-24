// Exa 11.4
clc;
clear;
close;
format('v',6)
// Given data
Pa= 12;
N= 1440;// in rpm
Na= 500;// in rpm
Nm= 1450;// in rpm
fa= Pa*Na/120;// in Hz
Pm= round(120*fa/Nm);
// Synchronous speed of motor
Ns= 120*fa/Pm;// in rpm
s= (Ns-N)/Ns*100;// in %
disp(Pm,"The numbers of pole is : ")
disp(s,"The percentage slip is : ")
