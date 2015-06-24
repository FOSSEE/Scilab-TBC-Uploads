//Ex13_2
clc
Rf = 0.5*10^6//feeback resistance
Cf = 100*10^-12//capacitance across feedback
Rc = 0.5*10^6//critical resistance
f0 = 1/[2*%pi*Rf*Cf*(6+4*(Rc/Rf))^(1/2)]//frequency of oscillation
disp("Rf = "+string(Rf)+"ohm")
disp("Cf = "+string(Cf)+"F")
disp("Rc = "+string(Rc)+"ohm")
disp("f0 = 1/[2*pi*Rf*Cf*(6+4*(Rc/Rf))^(1/2)] = "+string(f0)+"Hz")
