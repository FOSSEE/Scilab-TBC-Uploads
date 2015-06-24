//Example 3.9 // Total loss and Average insertion loss
clc;
clear;
close;
//given data :
N=32;
Pin=10^3;
a=14;// in micro-W
pf=a*N;
s_loss=10*log10(N);
e_loss=10*log10(Pin/pf);
T_loss=s_loss+e_loss;
disp(T_loss,"Total loss,(dB) = ")
I_loss=10*log10(Pin/a);
disp(I_loss,"The insertion loss,(dB) = " )
