//To find the frequency of the natural torsional oscillations of the system
clc
//given
l1=11//in
l2=10//in
l3=15//in
l4=4//in
l5=10//in
d1=3//in
d2=5//in
d3=3.5//in
d4=7//in
d5=5//in
I1=1500//lb ft^2
I2=1000//lb ft^2
leq=3//in from 15.49
g=32.2//ft/s^2
C=12*10^6
J=%pi*leq^4/32
l=l1+l2*(leq/d2)^4+l3*(leq/d3)^4+l4*(leq/d4)^4+l5*(leq/d5)^4
la=I2*l/(I1+I2)
qa=C*J/la
n=(1/(2*%pi))*(qa*g*12/(I1*12^2))^(1/2)
printf("\nThe frequency of the natural torsional oscillation of the system = %.1f per sec",n)
