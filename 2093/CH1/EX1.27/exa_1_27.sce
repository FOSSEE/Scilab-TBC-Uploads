// Exa 1.27
clc;
clear;
close;
// Given data
Ao= 86;// in dB
A= 40;// in dB
f=100;// in kHz
f=f*10^3;// in Hz
// From  20*log(S) = 20*log(Ao/A), where S, stands for sqrt(1+(f/fb)^2)
S= 10^((Ao-A)/20);
// S= sqrt(1+(f/fb)^2)
fb= f/sqrt(S^2-1);// in Hz
Ao= 10^(Ao/20);
ft= Ao*fb;// in Hz
disp(Ao,"The value of Ao is : ")
disp(fb,"The value of fb in Hz is : ")
disp(round(ft*10^-6),"The value of ft in MHz is : ")
