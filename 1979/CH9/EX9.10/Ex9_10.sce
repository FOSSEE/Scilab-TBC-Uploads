//chapter-9 page 413 example 9.10
//==============================================================================
clc;
clear;

//For an IMPATT diode
L=2*10^(-6);//Drift Length in m
Vd=10^5;//Carrier Drift Velocity (Assume/Consider) in m/sec

//CALCULATION
t=(L/Vd)/10^(-9);//Drift Time of the Carrier in nano sec [From f=(1/2t)=(Vd/2L)]
t1=t*10^(-9);
f=(1/(2*t1))/10^9;//Operating Frequency of the diode in GHz

//OUTPUT
mprintf('\nDrift Time of the Carrier is t=%1.2f nano sec \nOperating Frequency of the diode is f=%2.0f GHz',t,f);

//=========================END OF PROGRAM===============================

