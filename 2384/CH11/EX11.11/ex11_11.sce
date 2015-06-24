// Exa 11.11
clc;
clear;
close;
format('v',6)
// Given data
P = 4;
f =60;// in Hz
s = 0.03;
Ns = (120*f)/P;// in rpm
N = Ns*(1-s);// in rpm
disp(Ns,"The synchronous speed in rpm is : ")
disp(N,"The rotor speed in rpm is");
f_r = s*f;// in Hz
disp(f_r,"The rotor current frequency in Hz is");
// Rotor magnetic field rorats at speed 
Rm = (120*f_r)/P;// in rpm
disp(Rm,"The rotor magnetic field rotates at speed in rpm is");
