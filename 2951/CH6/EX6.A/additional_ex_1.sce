clc;
clear;
T=290;//Temperature in K
B=15; //Bandwidth in KHz
k=1.38*10^(-23); //Boltzman constant
R=60; //resistance in ohms

N=k*T*B*10^(3); //Therman Noise Power in watts
N_dBm=10*log10(N/0.001);//in dBm

Vrms=sqrt(4*R*k*T*B*10^(3));

disp("thermal noise power (in watts) is");
disp(N);
disp("thermal noise power (in dBm) is");
disp(N_dBm);
disp("RMS noise voltage (in Volts) is");
disp(Vrms);
