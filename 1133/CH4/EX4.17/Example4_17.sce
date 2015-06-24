//Example 14.7
clc
disp("For a Hartley oscillator,")
disp("  f = 1 / 2*pi*sqrt(L_eq*C)        where L_eq = L1 + L2 + 2M")
leq=(1/(4*(%pi^2)*((168*10^3)^2)*(50*10^-12)))*10^3  // in mH
format(6)
disp(leq,"Therefore,  L_eq(in mH) =")
l2=((17.95*10^-3)-(15*10^-3)-(5*10^-6))*10^3  // in mH
disp(l2,"Therefore,  L2(in mH) =")
hfe=((15*10^-3)+(5*10^-6))/((2.945*10^-3)+(5*10^-6))
format(5)
disp(hfe,"Now    h_fe = L1+M / L2+M =")
