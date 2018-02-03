clc;
clear;
R=30 // resistance in ohm
L= 20*10^-3 //inductance in H
f=1000/%pi //frequency in Hz
V=25 //in volt

//calculation
// for (a)
inductance_l=2*%pi*f*L //in ohm
Z=sqrt(R^2+inductance_l^2) //in ohm
C=L/Z^2 

mprintf("\n(a) The capacitance of the circuit is %d microF\n",C/10^-6) //converting from F to mF dividing by 10^-6

//for(b)

dynamic_imp=L/(C*R) //in ohm
I_min=V/dynamic_imp

mprintf("\n(b) The value of current is = %0.1f A",I_min)

