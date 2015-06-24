//Example 15.1.
clc
format(5)
L1=(1/(4*(%pi^2)*((120*10^3)^2)*0.004*10^-6))-(0.4*10^-3)  //in henry
x1=L1*10^3 //in mH
disp("The frequency of Hartley oscillator is given by")
disp("    fo = 1 / 2*pi*sqrt((L1+L2)*C)")
disp(x1,"Therefore,  L1(mH) = (1 / 4*pi^2*fo^2*C) - L1 =")