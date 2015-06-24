clc
clear

T=50;
Vst=870;
N=300;
Pm=10;
n=N/2;

BP=(2*(22/7)*N*T)/(60*1000);
IP=(Pm*100*Vst*(10^-6)*N)/(60*2);
Em=BP/IP;
printf('Mechanical Efficiency= %3.2f Percent',Em*100);
printf('\n');
