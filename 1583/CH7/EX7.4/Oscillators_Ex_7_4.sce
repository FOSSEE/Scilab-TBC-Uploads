clc
//Chapter 7:Conditions for Oscillation
//example 7.4 page no 255
//given
gm=6*10^-3
r=4
f=10^6
disp('Assume (w*Cm)^-1=X')
X=sqrt(r/gm)//minimum permissible reactance
Cm=(2*%pi*f*X)^-1//maximum series capacitance
mprintf('the minimum permissible reactance is %f ohm \n the maximum series capacitance is %f pF',X,Cm*1e12)
