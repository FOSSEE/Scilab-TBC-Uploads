// To discuss the effect of tap changing
clear 
clc;
V=1;
Qload=1*V
Qcap=-.75*V^2;
Qnet=Qload+Qcap;
VS=1-.75*2*V;// voltage sensitivity
mprintf("Voltage sensitivity=%.3f\n",VS);
mprintf("since the voltage sensitivity is negative ,\n voltage regulation by tap changing will reduce net reactive load and improive voltage stability ");
