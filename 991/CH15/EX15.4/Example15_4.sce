//Example 15.4.
clc
format(7)
C1=0.2*10^-6
C2=0.02*10^-6
fo=10*10^3
disp("The frequency of the Colpitts oscillator is given by")
disp("    fo = 1/2pi * sqrt(C1+C2/L*C1*C2)")
L=(C1+C2)/(4*%pi^2*fo^2*C1*C2)
x1=L*10^3
disp(x1,"Therefore,  L(mH) = (C1+C2) / (4*%pi^2*fo^2*C1*C2) =")
disp("The voltage gain required to produce oscillation is")
x2=C1/C2
disp(x2,"    Av > C1/C2 =")