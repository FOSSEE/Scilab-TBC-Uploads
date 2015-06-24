//chapter-3 page 48 example 3.3
//==============================================================================
clc;
clear;

R=8;//Resistance of a transmission line in ohm/km
L=0.002;//Inductance of a transmission line in henry/km
C=0.002*(10^(-6));//Capacitance of a transmission line in Farads
G=0.07*(10^(-6));//Conductance of a transmission line in siemens/km
f=2000;//Frequency in Hz
w=2*(%pi)*f;//Angular Frequency in rad/sec
Vs=2;//Input Voltage in volts
l=500;//Length of Transmission line in km

//CALCULATIONS
Z0=sqrt((R+(w*L*(%i)))/(G+(w*C*(%i))));//Characteristic Impedance
x=real(Z0);
y=imag(Z0);
disp('Characteristic Impedance in ohms is');
disp(Z0);
g=sqrt((R+(w*L*(%i)))*(G+(w*C*(%i))));//Propagation Constant
a=real(g);//Attenuation Constant in NP/km
b=imag(g);//Phase Constant in rad/km
Is=Vs/Z0;
I0=Is*exp(-(g*l));//Load current
m=sqrt((real(I0))^2+(imag(I0)^2));
P=(m^2)*x;//Power delivered to the load in watts

//OUTPUT
mprintf('\nAttenuation Constant is a=%1.6f NP/km \nPhase Constant is b=%1.6f rad/km \nPower delivered to the load is P=%1.6f watts',a,b,P);

//===============END OF PROGRAM================================


