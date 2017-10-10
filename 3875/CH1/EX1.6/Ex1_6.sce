clc;
clear;
R=50 //resistance in ohm
C=25 //capacitance in micro-F
L=0.15 //inductance in H
V=230 //voltage in Volts
f=50 //frequency in Hz

//calculation 
XL=2*%pi*f*L //in ohm
XC=(10^6)/(2*%pi*f*C) //in ohm
X=XL-XC //in ohm
Z=sqrt(R^2+X^2)
I=V/Z
pf=R/Z
power_consumed=V*I*pf

mprintf("(i)Impedance = %2.1f ohm\n",Z) //The answers vary due to round off error
mprintf("(ii)Current = %1.2f A\n",I) //The answers vary due to round off error
mprintf("(iii)Power Factor = %1.2f (Lead)\n",pf)
mprintf("(iv)Power Consumed = %d W",power_consumed) //The answers vary due to round off error
