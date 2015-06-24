//Example 4.5
clc
disp("The frequency of the oscillator is given by,")
disp("  f = 1 / 2*pi*sqrt(R1*R2*C1*C2)")
disp("For    f = 10 kHz,")
r2=(1/(4*(%pi^2)*(100*10^6)*(10*10^3)*(0.001*10^-12)))  // in k-ohm
format(6)
disp(r2,"Therefore,  R2(in k-ohm) =")
disp("For    f = 50 kHz,")
r2=(1/(4*(%pi^2)*(2500*10^6)*(10*10^3)*(0.001*10^-12)))  // in k-ohm
format(6)
disp(r2,"Therefore,  R2(in k-ohm) =")
disp("So minimum value of R2 is 1.013 k-ohm while the maximum value of R2 is 25.33 k-ohm")
