//Ex3.4.2
//calculation of parameter for half wave rectifier ckt
clc;
clear;
//given
Rs=5;//resistance of transformer secondary winding
Rf=50;//forward resistance of diode
Rl=1000;//load resistance
N=1/4;//ratio of no. of turns secondary to primary winding (Ns/Np)
V=240;//input ac voltage
Vs_rms=N*V;//rms secondary voltage
Vm=sqrt(2)*Vs_rms;//peak secondary voltage
Im=Vm/(Rs+Rf+Rl);//peak load current
Il_dc=Im/%pi;//avg load current
Vl_dc=Il_dc*Rl;//avg load voltage
disp('Part(1)');
disp('Ampere',Il_dc,'Average load Current is :');
disp('Volt',Vl_dc,'Average load Voltage is :');
Il_rms=Im/2;//rms load current
Vl_rms=Il_rms*Rl;//rms load voltage
disp('Part(2)');
disp('Ampere',Il_rms,'rms load Current is :');
disp('Volt',Vl_rms,'rms load Voltage is :');
Pl_dc=(Il_dc^2)*Rl;//dc load power
Is_rms=Il_rms;//Is_rms is secondary rms current
Pac=(Is_rms^2)*(Rs+Rf+Rl);//ac input power
disp('Part(3)');
disp('Watt',Pl_dc,'DC load Power is :');
disp('Watt',Pac,'AC input Power is :');
n=(Pl_dc/Pac)*100;//rectification efficiency
disp('Part(4)');
disp('%',n,'Rectification Efficiency is :')
TUF=(Pl_dc/(Vs_rms*Is_rms))*100;
disp('Part(5)')
disp('%',TUF,'Tranformer Utilization Factor is:')
