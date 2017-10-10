clc
SNRdB=6;..//signal to noise ratio
SNR=10^(SNRdB/10);
Rg=50;..//resistance
Ft=14.87;..//noise factor
Bn=12000;..//bandwidth
k=1.38*10^-23;..//boltzmann constant
T=290;..//room temperature
C=18.2;
ev=sqrt(k*Ft*Bn*SNR*Rg*T);
T1=(Ft-1)*T+(C+273);
ev1=sqrt(k*Ft*Bn*SNR*Rg*T1);
disp("Volts",ev,"Sensitivity at room temperature");
disp("Volts",ev1,"Sensitivity at an average value of 18.2 deg C");