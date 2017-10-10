// 2.34
clc;
clear
th=20;
Vz=2.73+th*10*10^-3;
Voffset=-2.73;
Vout=Vz+Voffset;
Rbias=(5-0.2)/10^-3;
Rzero=500;
th=50;
Vz=2.73+th*10*10^-3;
VmaxT=Vz+Voffset;
Vsupply=5;
Rl=(VmaxT*Rbias)/(Vsupply-VmaxT);
printf("Value of resistance R1=%.2f ohm",Rl)
disp('value of resistance RL>>Rl')