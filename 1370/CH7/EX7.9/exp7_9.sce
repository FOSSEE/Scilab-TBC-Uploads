//Example 7.9
clc
disp("The current equation of a diode is")
disp("I = I_0 * (e^(V/eta*VT) - 1)")
disp("At 300 K,  VT = 26 mV = 26*10^-3 V")
disp("  V = 0.71 V for I = 2.5 mA  and eta = 2 for silicon")
i0=(2.5*10^-3)/((%e^(0.71/(2*26*10^-3)))-1)
format(9)
disp(i0,"Therefore,  I_0(in A) =")
disp("Now V = 0.8 V")
i=((2.93*10^-9)*((%e^(0.8/(2*26*10^-3)))-1))*10^3
format(6)
disp(i,"Therefore,  I(in mA) =")
