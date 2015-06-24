//Example 15.8.
clc
format(6)
fo=1/(2*%pi*(200*10^3)*(100*10^-12)*sqrt(6)) //in Hz
x1=fo*10^-3 //in kHz
disp("The frequency of RC phase shift oscillator is given by")
disp("      fo = 1 / 2*pi*R*C*sqrt(6)")
disp(x1," fo(KHz) =")