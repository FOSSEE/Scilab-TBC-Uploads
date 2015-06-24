//Example 4.21
clc
disp("The frequency is given by,")
disp("  f = 1 / 2*pi*R*C")
disp("Let the resistance value to be selected as,")
disp("  R1 = R2 = R = 50 k-ohm")
disp("  f = 1 / 2*pi*50*10^3*C")
f=(1/(2*%pi*(50*10^3)*100))*10^9  // in nF
format(6)
disp(f,"  f(in nF) =")
disp("and  f_max = 1 / 2*pi*50*10^3*C")
c=(1/(2*%pi*(50*10^3)*(10*10^3)))*10^9  // in pF
disp(c,"  C(in nF) =")
disp("Thus to vary the frequency from 100 Hz to 10 kHz, the capacitor range should be selected as 0.318 nF to 31.83 nF")
disp("Similarly keeping the capacitor value constant, the range of the resistance values can be obtained.")
