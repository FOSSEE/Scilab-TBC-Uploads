//Chapter 16, Problem 3, Fig. 16.3
clc;
V=120;                           //voltage
f=200;                            //frequency in hertz
I=2;                             //supply current
pf=0.6;                             //power factor
phi=acos(pf);
Ir=I*pf;                        //current flowing in the resistor
Ic=I*sin(phi);                        //current flowing in the capacitor
R=V/Ir;                             //resistance in ohm
C=Ic/(2*%pi*f*V);                   //capacitance in faradd
printf("Capacitance of capacitor = %f uF\n\n",C*10^6);
printf("Resistance of resistor = %f ohm\n\n",R);
