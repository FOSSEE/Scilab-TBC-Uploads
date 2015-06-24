//Ex7_1
clc
A=60000
disp("A= "+string(A)) //Amplifier gain
Af=10000
disp("Af= "+string(Af)) //Feedback gain
N_dB=20*log10(Af/A)
disp("N_dB=20*log10(Af/A)= "+string(N_dB)+"dB") //Negative feedback gain
B=[1/(Af)]-(1/A)// formulae using [Af=A/(1+A*B)]
disp("B=[1/(Af)]-(1/A)= "+string(B)) //Feedback factor
