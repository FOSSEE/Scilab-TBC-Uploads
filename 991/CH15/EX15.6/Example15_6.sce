//Example 15.6.
clc
format(6)
fo1=400*10^3
fo2=1200*10^3
Lp=60*10^-6
disp("The resonant frequency is given by")
disp("           fo = 1 / 2pi*sqrt(Lp*C)")
disp("Therefore,  C = 1 / 4*pi^2*fo^2*Lp")
C = 1 / (4*%pi^2*fo1^2*Lp)
x1=C*10^12
disp(x1,"When  fo = 400 kHz,  Cmax(pF) =")  // answer in textbook is wrong
C = 1 / (4*%pi^2*fo2^2*Lp)
x2=C*10^12
format(5)
disp(x2,"When  fo = 1200 kHz,  Cmin(pF) =")
disp("Hence, the capacitor range required is Cmin-Cmax pF")