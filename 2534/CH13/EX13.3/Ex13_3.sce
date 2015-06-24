//Ex13_3
clc
Rf = 1.5*10^6//feeback resistance
Cf = 1*10^-9//capacitance across feedback
f0 = 1/(2*%pi*Rf*Cf)//frequency of oscillation
disp("Rf = "+string(Rf)+"ohm")
disp("Cf = "+string(Cf)+"F")
disp("f0 = 1/(2*pi*Rf*Cf) = "+string(f0)+"Hz")
