//chapter-8 page 337 example 8.2
//==============================================================================
clc;
clear;

//For a 2 cavity klystron amplifier
Av=15;//Voltage gain in dB
Pin=0.005;//I/P power in W
Rin=30000;//Rsh of i/p cavity in ohms
R0=40000;//Rsh of o/p cavity in ohms
Rl=40000;//load impedance in ohms
R=20000;//Parallel resistance of R0 and Rl (R0//Rl) in ohms

//CALCULATION
Vin=sqrt(Pin*Rin);//The input rms voltage in V  [From Pin=Vin^2/Rin]
V0=Vin*10^(Av/20);//The output rms voltage in V [From Av=20log(V0/Vin)]
P0=(V0^2)/R;//The Power delivered to the load in W

//OUTPUT
mprintf('\nThe input rms voltage is Vin=%2.2f V \nThe output rms voltage is V0=%2.2f V \nThe Power delivered to the load is P0=%1.4f W',Vin,V0,P0);

//=========================END OF PROGRAM===============================

