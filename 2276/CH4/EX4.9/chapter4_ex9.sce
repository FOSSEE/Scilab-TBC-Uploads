clc
clear

//input
f=100000;//frequency in hertz
r=5;//resistance of the coil in ohms
l=0.0016;//inductance of the coil in henry

//calculations
xl=2*%pi*f*l;//inductive reactance of the coil in ohms
c=(10^12)/(2*%pi*f*xl);//capacitance required for resonance in pico farad

//output
mprintf('the series capacitor must be turned to %3.0f pF to produce resonance at 100kHz',c)
