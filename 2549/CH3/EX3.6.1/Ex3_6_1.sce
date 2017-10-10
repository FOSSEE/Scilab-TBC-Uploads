//Ex3.6.1
//calculation of average load voltge bridge rectifier ckt
clc;
clear;
//given
N=1/2;//ratio of no. of turns secondary to primary winding (Ns/Np)
V=230;//input ac voltage
Vs_rms=N*V;//rms secondary voltage
Vm=sqrt(2)*Vs_rms;//peak secondary voltage
Vl_dc=(1/%pi)*integrate('(Vm-1.4)*sin(Wt)','Wt',0,%pi);//(Vm-1.4) (voltage drop across two diode by 1.4V)
disp('Volt',Vl_dc,'Average load voltage is :')
