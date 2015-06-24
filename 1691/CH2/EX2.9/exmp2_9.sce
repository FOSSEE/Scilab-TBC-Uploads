//Example 2.9
clc
disp("The given values are,")
disp("  L1 = 0.5 mH,  L2 = 1 mH,  C = 0.2 uF")
disp("Now  f = 1 / 2*pi*sqrt(C*L_eq)")
leq=0.5+1  // in mH
disp(leq,"and  L_eq(in mH) = L1 + L2 =")
f=(1/(2*%pi*sqrt(1.5*0.2*10^-9)))*10^-3  // in kHz
format(5)
disp(f,"Therefore,  f(in kHz) =")
