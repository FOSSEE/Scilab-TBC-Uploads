clc;
clear;
R=8 //resistance in ohm
L=0.03 //inductance in H
V=240 //voltage in Volts
f=50 //frequency in Hz
reactance_RLC=9.42 //reactance of total RLC circuit in ohm in case(2)

//calculation 
//for (1)
X_L=2*%pi*f*L // inductive reactance in ohm
Z=sqrt(R^2+X_L^2) //in ohm
I=V/Z
P=I^2*R
pf=R/Z

//for (2)
reactance_C=2*reactance_RLC //capacitive reactance in ohm
omega=2*%pi*f
C=1/(omega*reactance_C) 

mprintf("(i)Impedance = %2.1f ohm\n",Z) //The answer varies due to round off error
mprintf("(ii)Current = %1.2f A\n",I) //The answers varies due to round off error
mprintf("(iii)Power Factor = %1.2f (lag)\n",pf)
mprintf("(iv)Power Consumed = %d W\n",P) //The provided in the textbook is wrong.
mprintf("(v)The value of capacitance is = %d mF\n",C/10^-6)//The answers varies due to round off error
