//Example 2.17
clc
disp("R = 6 k-ohm,  C = 1500 pF,  R_C = 18 k-ohm")
k=18/6
disp(k,"Now    K = R_C / R =")
disp("Therefore,  f = 1 / 2*pi*R*C*sqrt(6+4K)")
f=(1/(2*%pi*(6*10^3)*(1500*10^-12)*sqrt(6+12)))*10^-3  // in kHZ
format(6)
disp(f,"  f(in kHz) =")
hfe=(4*3)+23+(29/3)
disp(hfe,"  (h_fe)min = 4K + 23 + 29/K =")
