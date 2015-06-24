clc
clear

//input
r=10;//resistance in source impedance in kiloohms
l=0.005;//inductance in source impedance in henry
v=100;//supply voltage in volts
f=10000;//supply frequency in hertz

//calculations
xl=2*%pi*f*l;//inductive reactance in ohms
c=((10^6)*(10^3))/(2*%pi*f*xl);//capacitance in picofarad

//output
mprintf('for maximum power transfer the load must consist of %3.0f kilo ohms resistance in series with a capacitance of %3.0f pF',r,c)
