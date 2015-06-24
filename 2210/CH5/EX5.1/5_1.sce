//Chapter 5, Problem 1
clc
R=3                         //resistance in ohm
L=20*10^-9                  //inductance in henry
f0=500e6                    //frequency in hertz

//calculation
Z=R
C=(1/(2*%pi*f0*sqrt(L)))^2
Q=2*%pi*f0*L/R
B=f0/Q

printf("(a) Impedance at resonance = %d ohm\n\n",Z)
printf("(b) Value of series capacitor = %.3f pF\n\n",C*10^12)
printf("(c) Q of the circuit at resonance = %.3f\n\n",Q)
printf("(d) 3 dB bandwidth of the circuit = %.3f Mhz\n\n",B/10^6)
