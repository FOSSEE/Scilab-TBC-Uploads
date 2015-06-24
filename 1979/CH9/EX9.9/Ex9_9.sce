//chapter-9 page 412 example 9.9
//==============================================================================
clc;
clear;

//For an IMPATT diode
Lp=0.5*10^(-9);//Inductance in Henry
Cj=0.5*10^(-12);//Capacitance in Farad
Ip=0.8;//RF peak current in A
Rl=2;//Load Resistance in ohms
Vbd=100;//Breakdown Voltage in V
Ib=0.1;//dc Bias current in A

//CALCULATION
f=(1/(2*(%pi)*sqrt(Lp*Cj)))/10^9;//Resonant Frequency in GHz
n=((Rl*Ip^2)/(2*Vbd*Ib))*100;//Efficiency in Percentage

//OUTPUT
mprintf('\nResonant Frequency is f=%2.0f GHz \nEfficiency is n=%1.1f percentage',f,n);

//=========================END OF PROGRAM===============================

