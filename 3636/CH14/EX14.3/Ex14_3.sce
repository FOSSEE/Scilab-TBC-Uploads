clear;
clc;
RL=500 //load resistance in ohm
C1=100*10^-6 //capacitance in F
C2=50*10^-6 //capacitance in F
L=5 //in H
f=50 //frequency in Hz
 
//Calculation
Y=0.216/(RL*C1*C2*L*(2*%pi*f)^3)

format("v",8)
disp(Y,"Ripple factor Y= ") //The answers vary due to round off error
