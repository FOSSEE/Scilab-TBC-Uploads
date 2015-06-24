//Example 15.7.
clc
format(6)
fo1=540*10^3
fo2=1650*10^3
L=1*10^-3
disp("Given L = 1 mH")
disp("fo ranges from 540-1650 kHz")
disp("The resonant frequency is given by")
disp("           fo = 1 / 2pi*sqrt(L*C)")
disp("Therefore,  C = 1 / 4*pi^2*fo^2*L")
Cmax = 1 / (4*%pi^2*fo1^2*L)
x1=Cmax*10^12
disp(x1,"When  fo = 540 kHz,  Cmax(pF) =")
Cmin = 1 / (4*%pi^2*fo2^2*L)
x2=Cmin*10^12
format(4)
disp(x2,"When  fo = 1650 kHz,  Cmin(pF) =")
disp("Hence, the capacitor range required is 9.3-86.87 pF")