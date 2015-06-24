//Example 2.28
clc
leq=500+5000+600
format(5)
disp(leq,"L_eq(in uH) = L1 + L2 + 2M =")
f=(1/(2*%pi*sqrt(150*6100*10^-18)))*10^-3
format(9)
disp(f,"f(in kHz) = 1 / 2*pi*sqrt(C*L_eq) =")
