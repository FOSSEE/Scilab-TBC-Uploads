// To Determine the coil inductance and the resistance
// example 8-12 in page 225
clc;
// Data given
f=1.25e+6; C=147D-12; Q=98; // frequency in hertz, Capacitance in farad and Q factor of the Q metre
//calculation
L=1/((2*%pi*f)^2*C);// inductance in henry
printf("inductance=%.0f micro-henry\n",L*10^6);
printf("R=%.1f ohm",(2*%pi*f*L)/Q);
//result
//inductance=110 micro-henry
//R=8.8 ohm 