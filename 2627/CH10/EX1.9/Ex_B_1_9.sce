//Part B Ex 1.9
clc;clear;close;
format('v',6);
G1=20;//dB
G2=30;//dB
G3=40;//dB
Ap1=10^(G1/10);//Power Gain
disp(Ap1,"Power gain for 20 dB");
Av1=10^(G1/20);//Voltage Gain
disp(Av1,"Voltage gain for 20 dB");
Ap2=10^(G2/10);//Power Gain
disp(Ap2,"Power gain for 30 dB");
Av2=10^(G2/20);//Voltage Gain
disp(Av2,"Voltage gain for 30 dB");
Ap3=10^(G3/10);//Power Gain
disp(Ap3,"Power gain for 40 dB");
Av3=10^(G3/20);//Voltage Gain
disp(Av3,"Voltage gain for 40 dB");
