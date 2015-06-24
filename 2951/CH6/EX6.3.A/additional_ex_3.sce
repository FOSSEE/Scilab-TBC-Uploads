clc;
clear;
q=1.6*10^(-19);// electron charge
Ieq=5;//equivalent shot noise current in uA
Bn=8;//bandwidth in MHz
Rn=200;
Rs=100;//resistance in ohms
k=1.38*10^(-23);// boltzman constant
T=290;//temperature in K
Vs=10// RMS signal source volatage in uV

In=sqrt(2*Ieq*q*Bn);

Vni=Rs*In;//shot noise voltage 

Vns=sqrt(4*Rs*k*T*Bn*10^(6));//thermal noise volatge from source

//change in answer due to calculation error in book 
Vne=sqrt(4*Rn*k*T*Bn*10^(6));//noise voltage by equivalent noise resistance

Vn=sqrt(Vni^2+Vns^2+Vne^2);// total noise voltage

SNR=20*log10(Vs*10^(-6)/Vn);

disp("shot noise voltage(in V) is ");
disp(Vni);
disp("thermal noise voltage from source(in V) is");
disp(Vns);
disp("noise voltage by equivalent noise resistance(in V) is");
disp(Vne);
disp("total noise voltage at the input(in V) is");
disp(Vn);
disp("SNR (in dB) is");
disp(SNR);




