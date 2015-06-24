clc
clear

//input
q=100;//Q factor of a coil
r=25;//resistance of the coil in ohms
//a capacitor is connected in sries with the coil
f=400000;//resonant frequency in hertz
i=0.125;//current at resonance in amperes

//calculations
p=i*i*r;//power dissipated in coil in watts
e=p/f;//energy dissipated per cycle in joules
im=(2*i)^0.5;//assumin sinusoidal current in maperes
l=(((q*p)/(2*%pi*f))*(2/(im^2)))*1000;//inductance in millihenry
phi=acos(1/q);//phase angle in radians
c=(10^12)/(2*%pi*f*r*q);//capacitance in picofarad

//output
mprintf('the inductance and the phase angle of the coil are %3.1f mH and %3.2f radians and the required capacitance for resonance is %3.0f pF',l,phi,c)
