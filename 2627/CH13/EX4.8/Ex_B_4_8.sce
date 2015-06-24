//Ex 4.8
clc;clear;close;
format('v',5);
delta_f=10;//kHz
fm=10;//kHz
Vc=10;//V
fc=500;//kHz
m=delta_f/fm;//modulation index
//For m=1 we have 3 sidebands
B=2*(3*fm);//kHz
disp(B,"(a) Actual minimum bandwidh(kHz)");
B=2*(fm+delta_f);//kHz
disp(B,"(b) Approximate minimum bandwidh(kHz)");
A0=0.77*fm;//V
A1=0.44*fm;//V
A2=0.11*fm;//V
A3=0.02*fm;//V
//For frequency spectrum
A=[A3 A2 A1 A0 A1 A2 A3];//V(Amplitudes)
f=[fc+3*fm fc+2*fm fc+fm fc fc+fm fc+2*fm fc+3*fm];//kHz
plot(f,A);
title('Output frequency spectrum');
xlabel('Frequency(kHz)');
ylabel('Amplitudes(V)');
