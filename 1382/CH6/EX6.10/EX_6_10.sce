// Example 6.10;//input & output impedance
clc;
clear;
close;
A= 10000;// open voltage gain
Beta=0.02;// feedback ratio
Zi=1;//input impedance without feedback in kiilo ohms
Zo=10;//output impedance without feedback in kiilo ohms
Zif= (1+A*Beta)*Zi;//input impedance with feedback in kiilo ohms
Zof=(Zo/(1+Beta*A))*10^3;//output impedance with feedback in  ohms
disp(Zif,"input impedance with feedback in kiilo ohms is ")
disp(Zof,"output impedance with feedback in ohms is ")
