//Example 4.16.
clc
format(6)
disp("For a Hartley oscillator the frequency is given by,")
disp("  f = 1 / 2*pi*sqrt(L_eq*C)        where L_eq = L1+L2")
leq=20+5  // in mH
disp(leq,"Therefore,  L__eq(in mH) = 20+5 =")
f=(1/(2*%pi*sqrt(25*500*10^-15)))*10^-3  // in kHz
disp(f,"Therefore,  f(in kHz) =")
