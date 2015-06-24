clc
//Chapter 7:Conditions for Oscillation
//example 7.2 page no 251 
//given
B=100
f=5*10^6//oscillator frequency
L=10*10^-6//inductor
X=(L*(2*%pi*f)^2)^-1//Taking X=C1'*C2/(C1'+C2)
r=3.14//series resistance of inductor 
C1=200*10^-12//first capacitor(asumming values of capacitors)
C2=200*10^-12//second capacitor
Y=(1+B)/(((2*%pi*f)^2)*C1*C2)
Z=L/C1
rpi=(Y-Z)*r^-1//resistance 
gm=rpi^-1//transconductance
I=gm/40//bias current
mprintf('the equivalent capacitance is %3.2e pF \n the resistance value is %3.2e ohm \n the bias current is %3.2e A',X,rpi,I)
