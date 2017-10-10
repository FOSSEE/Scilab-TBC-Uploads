clc;
Vppout=7.5; //Volt
RL=10; //Ohm
Iceq=0.119; //Ampere
Icave=Vppout/(2*3.14*RL); //Ampere
I1=0.00691; //Ampere
Icc=Icave+I1; //Ampere
Vcc=15; //Volt
Ps=Vcc*Icc; //Watt
PLmax=Vppout^2/(8*RL); //Watt
N=(PLmax/Ps)*100;
disp('%',N,"N=");//The answers vary due to round off error



