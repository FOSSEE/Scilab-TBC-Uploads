clc
clear
//input
v=14 //voltage
f=90 //frequency
i=0.4 //current
t=55 //phase
//calculation
r=v/(i*sqrt(1+tand(t)^2))// value of resistance
l=r*tand(t)/(2*f*%pi)//value of inductance
c=1/(4*%pi*%pi*f*f*l)//value of capacitance for resonance to occur
//output
printf("the value of resistance is %3.3f ohm",r)
printf("\nthe value of inductance is %3.3f H",l)
printf("\nthe value of capacitor is %3.3e F",c)
