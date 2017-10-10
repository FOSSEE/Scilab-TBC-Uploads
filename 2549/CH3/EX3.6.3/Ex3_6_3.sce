//Ex3.6.3
//calculation of parameter for bridge rectifier ckt
clc;
clear;
//given
N=1/4;//ratio of no. of turns secondary to primary winding (Ns/Np)
V=220;//input ac voltage
f=50;// frequency
Rl=10^3;//load resistance
Vs_rms=N*V;//rms secondary voltage
Vm=sqrt(2)*Vs_rms;//peak secondary voltage
Vl_dc=2*Vm/%pi;//avg output voltage
disp('***Part(1)***');
disp('Volt',Vl_dc,'Average output Voltage is :');
Pl_dc=Vl_dc^2/Rl;//dc load power
disp('***Part(2)***');
disp('Watt',Pl_dc,'DC load Power is :');
PIV=Vm;
disp('***Part(3)***');
disp('Volts',PIV,'Peak Inverse Voltage is :');
f0=2*50; 
disp('***Part(4)***');
disp('Hz',f0,'Output frequency is :')
