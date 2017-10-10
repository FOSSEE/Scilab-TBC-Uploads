//Ex3.5.2
//calculation of parameter for full wave rectifier ckt
clc;
clear;
//given
Rs=10;//resistance of transformer secondary winding
Rf=5;//forward resistance of diode
Rl=100;//load resistance
N=1/2;//ratio of no. of turns secondary to primary winding (Ns/Np)
V=240;//input ac voltage
Vs_rms=N*V;//rms secondary voltage
Vm=sqrt(2)*Vs_rms;//peak secondary voltage
Il_dc=2*Vm/(%pi*(Rs+Rf+Rl));//avg load current
Vnl=2*Vm/%pi;//avg load voltage at no load
disp('****Part(1)');
disp('mA',Il_dc*10^3,'Average load Current is :');
disp('****Part(2)');
disp('Volt',Vnl,'Average load Voltage at No Load is :');
Vfl=Il_dc*Rl;//Average Load Voltage at Full load
disp('****Part(3)');
disp('Volt',Vfl,'Average load Voltage at Full Load is :');
%LR=((Vnl-Vfl)/Vfl)*100;//load regulation
disp('****Part(4)');
disp('%',%LR,'% Load Regulation is :');
n=(8/%pi^2)*(Rl/(Rs+Rf+Rl))*100;//rectification efficiency
disp('****Part(5)');
disp('%',n,'Rectification Efficiency is :')
