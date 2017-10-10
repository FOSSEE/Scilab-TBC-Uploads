clc;
//ex2.5
Vs=5; //volt
Vd=0.7; //volt
R1=1200; //ohm
R2=2200; //ohm
It=(Vs-Vd)/(R1+R2); //Ampere//Apply KVL to circuit       
disp('Ampere',It*1,"It=")
