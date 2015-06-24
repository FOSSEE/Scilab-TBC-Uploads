// to determine the resistance values for the circuit in the figure4-7
//example 4-4 in page 97
clc;
//Given data
E=20e-3;//maximum input voltage = 20 mV
Ib=0.2e-6;//op-amp input current 0.2 micro amps
Im=100e-6;//FSD=100 micro amps
Rm=10e+3;// coil resistance in 10 k-ohm
//As I4>>Ib select 
I4=1000*Ib;// current in ampere
// at full scale Im=100 micro-A
Vout=Im*Rm;
printf("R3=%d ohm\n",E/I4);
printf("R4=%.1f K-ohm\n",(Vout-E)/(1000*I4));
//result
//R3=100 ohm
//R4=4900 ohm