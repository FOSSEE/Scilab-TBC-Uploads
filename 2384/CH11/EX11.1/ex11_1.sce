// Exa 11.1
clc;
clear;
close;
format('v',6)
// Given data
P = 4;
f = 50;// in Hz
Ns = (120*f)/P;// in rpm
disp(Ns,"The synchronous speed in rpm is");
s = 4;
//s = ((Ns-N)/Ns)*100;
N = Ns - ( (s*Ns)/100 );// in rpm
disp(N,"The speed of the motor in rpm is");
N = 1000;// in rpm
s = ((Ns-N)/Ns);
f_desh= s*f;// in Hz
disp(f_desh,"The rotor current frequency in Hz is");
