//Tested on Windows 7 Ultimate 32-bit
//Chapter 4 Bipolar Junction transistors Pg no. 135
clear;
clc;

//Given Data

Vin=50D-3;//rms value of input ac voltage in volts
Rl=1D3;//load resistance in ohms
re=40;//emitter diode resistance in ohms

//Solution
//Figure 4.16

Gv=Rl/re;//voltage gain
Vout=Gv*Vin;//output voltage in volts

printf("Voltage Gain Gv = %d and Output Voltage Vout = %.2f Vrms(Volts).",Gv,Vout);
