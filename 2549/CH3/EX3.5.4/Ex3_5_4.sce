//Ex3.5.4
//calculation of parameter for full wave rectifier ckt
clc;
clear;
//given
Pl_dc=100;// dc load power in watt
Vl_dc=10;//dc Voltage
Vs=230;//supply voltage
Il_dc=Pl_dc/Vl_dc;
disp('***Part(1)');
disp('Ampere',Il_dc,'dc load current is :');
Vm=(%pi*Vl_dc)/2;//peak Voltage
Vs_rms=Vm/sqrt(2);//rms secondary voltage
disp('***Part(2)');
disp('Volt',Vs_rms,'rms secondary Voltage is :');
Im=(Il_dc*%pi)/2;//peak current
Is_rms=Im/sqrt(2);
disp('***Part(3)');
disp('Watt',Is_rms,'rms secondary current is :');
TUF=Pl_dc/(Is_rms*Vs_rms)*100;
disp('***Part(4)');
disp('%',TUF,'Transformer Utilization Factor is :');
n=Vs/Vs_rms;//n=N1/N2 turns ratio primary to secondary
disp('***Part(5)');
disp('Watt',n,'Turns ratio is :');



