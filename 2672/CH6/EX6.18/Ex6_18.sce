//Example 6_18
clc;
clear;
close;
format('v',4);
//given data : 
Vp=230;//V
fin=50;//Hz
RL=200;//ohm
NsByNp=1/4;//turns ratio
Vs=Vp*NsByNp;//V
Vrms=Vs;//V
Vm=Vrms*sqrt(2);//V
Idc=2*Vm/%pi/RL;//A
RL=150;//ohm
Vdc=Idc*RL;//V
disp(Vdc,"dc output Voltage(V) : ");
//Because of two output pulses
fout=2*fin;///Hz
disp(fout,"Pulse frequency of the output(Hz) : ");
