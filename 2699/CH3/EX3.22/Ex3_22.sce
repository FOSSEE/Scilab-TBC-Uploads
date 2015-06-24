//EX3_22 PG-3.58
clc
f=50;//frequency
C=1000e-6;//filter capacitor
Rl=500;//load resistance
Vrms=120;//rms value of voltage
T1=1e-3;//conduction period of diode,T1=1ms
disp("conduction period of diode,T1=1ms")
Esm=sqrt(2)*Vrms;//peak value of input voltage
disp("Edc=Esm-Idc/(2*f*C) and Idc=Edc/Rl")
Edc=Esm/(1+(2*Rl*f*C)^(-1));//output dc voltage
Idc=Edc/Rl;
T=1/f;
//Idc*T=Ip*T1
//Ip is the surge current
Ip=Idc*T/T1;
printf("\n hence the diode should be rated for a minimum surge\n current of %.2f A \n",Ip)
