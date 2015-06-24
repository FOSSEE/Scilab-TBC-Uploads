//Example 2.21
clc
disp("The frequency of the oscillator is given by,")
disp("  f = 1 / 2*pi*sqrt(R1*R2*C1*C2)")
disp("For  f = 20 kHz,")
r2=(1/(4*(%pi^2)*((20*10^3)^2)*(10*10^3)*((0.001*10^-6)^2)))*10^-3
format(5)
disp(r2,"Therefore,  R2(in k-ohm) =")
disp("For  f = 70 kHz,")
r2=(1/(4*(%pi^2)*((70*10^3)^2)*(10*10^3)*((0.001*10^-6)^2)))*10^-3
format(6)
disp(r2,"Therefore,  R2(in k-ohm) =")
disp("So minimum value of R2 is 0.517 k-ohm while the maximum value of R2 is 6.33 k-ohm")
