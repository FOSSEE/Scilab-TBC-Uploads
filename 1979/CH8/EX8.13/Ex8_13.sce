//chapter-8 page 346 example 8.13
//==============================================================================
clc;
clear;

//For a 2 cavity klystron amplifier
V0=1200;//Beam voltage in V
I0=0.03;//Beam current in A
f=10*10^9;//frequency in Hz
d=0.001;//gap spacing in either cavity in m
L=0.04;//spacing between centers of cavities in m
Rsh=40000;//Effective shunt impedance in ohms
J1=0.582;//value of J1(X)
X=1.841;//bunching parameter

//CALCULATION
v0=0.593*10^6*sqrt(V0);//velocity of reference electron in m/sec
w=2*(%pi)*f;//angular frequency in rad
a=w*L/v0;//transit angle without RF voltage in rad
tg=a*d/L;//average gap transit angle in rad
Bi=(sin(tg/2))/(tg/2);//beam coupling coefficient 
V1max=((2*X*V0)/(Bi*a));//Input RF voltage for Maximum output voltage in V
B0=Bi;//output cavity coupling coefficient 
V2=2*B0*I0*J1*Rsh;//in V
Av=V2/V1max;//Voltage gain 
AvdB=20*log10(Av);//Voltage gain in dB
n=0.58*(V2/V0)*100;//Maximum efficiency in %

//OUTPUT
mprintf('\nInput RF voltage for Maximum output voltage is V1max=%2.2f V \nThe Voltage gain is AvdB=%2.2f dB \nMaximum efficiency is I0=%2.2f percentage',V1max,AvdB,n);

//=========================END OF PROGRAM===============================

//Note: Check the answers once 
//There are slight changes in values
//Input RF voltage for Maximum output voltage is V1max=55.28 V 
//The Voltage gain is AvdB=24.35 dB 
//Maximum efficiency is I0=44.11 percentage 
