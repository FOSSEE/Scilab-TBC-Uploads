//Ex2_7
clc
C = 0.2*10^-6
f1 = 1.0*10^3
f2 = 50
disp("C = "+string(C)+"F")//capacitance
disp("at... f = "+string(f1)+"Hz")//frequency
disp("Xc = 1/(2*pi*f*C) = "+string(1/(2*%pi*f1*C))+"ohm")//calculation for capacitive reactance
disp("at... f = "+string(f2)+"Hz")//frequency
disp("Xc = 1/(2*pi*f*C) = "+string(1/(2*%pi*f2*C))+"ohm")//calculation for capacitive reactance
