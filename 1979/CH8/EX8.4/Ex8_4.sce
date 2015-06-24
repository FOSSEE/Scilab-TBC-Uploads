//chapter-8 page 338 example 8.4
//==============================================================================
clc;
clear;

//For a 2 cavity klystron amplifier
V0=900;//Beam voltage in V
I0=0.03;//Beam current in A
f=8*10^9;//frequency in Hz
d=0.001;//gap spacing in either cavity in m
L=0.04;//spacing between centers of cavities in m
Rsh=49000;//Effective shunt impedance in ohms
J1=0.582;//value of J1(X)
X=1.841;//bunching parameter

//CALCULATION
v0=(0.593*10^6*sqrt(V0))/10^6;//velocity of electron in 10^6 m/sec
w=2*(%pi)*f;//angular frequency in rad
v=v0*10^6;
T0=(L/v)/10^(-8);//dc transit time of electrons in 10^(-8) sec
a=w*T0*10^(-8);//transit angle in rad
tg=w*d/v;//average gap transit angle in rad
Tg=tg*(180/(%pi));
Bi=(sind(Tg/2))/(tg/2);//beam coupling coefficient 
Bo=Bi;//output cavity coupling coefficient 
V1max=((3.68*V0)/(Bi*a));//Input voltage for Maximum output voltage in V
R0=V0/I0;//impedance in ohms
Av=(Bo^2*a*Rsh*J1)/(R0*X);//Voltage gain 
AvdB=20*log10(Av);//Voltage gain in dB

//OUTPUT
mprintf('\nVelocity of electron is v0=%2.2f *10^6 m/sec \nThe dc transit time of electrons is T0=%1.3f *10^(-8) sec \nInput voltage for Maximum output voltage is V1max=%2.3f V \nVoltage gain is Av=%2.2f \nThe Voltage gain in dB is AvdB=%2.2f dB',v0,T0,V1max,Av,AvdB);

//=========================END OF PROGRAM===============================

//Note: Check the calculation given in text book for voltage gain Rsh=49 kohms
//but, taken as 40 kohms
//correct answers areVoltage gain is Av=28.52 
//The Voltage gain in dB is AvdB=29.10 dB
