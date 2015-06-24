clc
//Chapter 7:Conditions for Oscillation
//example 7.1 page no 247
//given
B=100//current gain 
f=20*10^6//oscillator frequency
VT=26*10^-3
Ic=1*10^-3//dc bias current
ri=VT/Ic//common base inout resistance
gm=ri^-1//transconductance
GH=3//In oscillator design the loop gain is usually selected to be about 3,which allow for some error in the approximation so that (C1+C2)/C1=3
C2=(2*%pi*f*8)^-1//second capacitor
C1=C2/2//first capacitor
Req=ri*((C1+C2)/C1)^2//equivalent resistor
L=(((2*%pi*f)^2)*((C1*C2)/(C1+C2)))^-1//inductor
mprintf('the value of second capacitor is %f pF \n the value of first capacitor is %f pF \n the value of equivalent resistor is %d ohm \n the value of indicator is %f uH',C2*1e12,C1*1e12,Req,L*1e6)


