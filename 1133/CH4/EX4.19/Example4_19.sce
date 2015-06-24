//Example 4.19
clc
disp("For a Clapp oscillator,")
disp("  f = 1 / 2*pi*sqrt(L*C3)")
disp("where    C3 = 63 pF")
f=(1/(2*%pi*sqrt(315*10^-18)))*10^-6  // in MHz
format(6)
disp(f,"Therefore,  f(in MHz) =")
