clc
//Chapter 4:Frequency selective networks and transformers
//example 4.6 paga no 130
//given
Rs=10//source resistance
L=0.2*10^-6//inductor 
f=20*10^6//given frequency
XL=(2*%pi*f*L)//inductive reactance
Rp=50//input impedance
Xs=sqrt(Rp*Rs-Rs^2)//series reactance
Xcs=5.1//series capacitive reactance
CS=(2*%pi*f*Xcs)^-1//series capacitance
Xp=(Rs^2+Xs^2)/Xs//equivalent parallel reactance
mprintf('the value of series reactance is j%f ohm \n the value equivalent parallel reactance is j%f ohm ',Xs,Xp)
