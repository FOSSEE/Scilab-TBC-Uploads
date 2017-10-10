//Ex3.5.3
//calculation of parameter for full wave rectifier ckt
clc;
clear;
//given
Rs=1;//resistance of transformer secondary winding
Rf=0.5;//forward resistance of diode
Rl=20;//load resistance
Il_dc=100*10^-3;//dc current
Im=(%pi*Il_dc)/2;//peak current
Vm=Im*(Rs+Rf+Rl);//peak voltage
Vs_rms=Vm/sqrt(2);//rms secondary voltage
disp('***Part(1)');
disp('Volt',Vs_rms,'rms secondary Voltage is :');
Pl_dc=(Il_dc^2)*Rl;//dc load power
disp('***Part(2)');
disp('Watt',Pl_dc,'dc power supplied to Load is :');
PIV=2*Vm;
disp('***Part(3)');
disp('Volt',PIV,'Peak Inverse Voltage of each diode is :');
Pac=Vm^2/(2*(Rs+Rf+Rl));
disp('***Part(4)');
disp('Watt',Pac,'AC Input Power is :');
n=(Pl_dc/Pac)*100;
disp('***Part(5)');
disp('%',n,'Conversion efficiency is :');


