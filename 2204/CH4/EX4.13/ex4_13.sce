//Exa 4.13
clc;
clear;
close;
// Given data
omega= 10000;// in rad/sec
GaindB= 20;// peak gain in dB
Gain= 10^(GaindB/20);
C= 0.01;// in µF
C= C*10^-6;// in F
// Formula omega= 1/(C*RF)
RF= 1/(C*omega);// in Ω
R1= RF/Gain;// in Ω
disp(RF*10^-3,"The value of RF in kΩ is : ")
disp(R1*10^-3,"The value of R1 in kΩ is : ")
