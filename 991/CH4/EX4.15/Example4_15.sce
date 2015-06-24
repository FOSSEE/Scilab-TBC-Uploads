//Example 4.15.
clc
format(5)
disp("The current of PN junction diode is,")
disp("I = Io*(e^(V/VT)-1)")
disp("Therefore,    -0.09*Io = Io*(e^(V/VT)-1)")
disp("where    VT = T/11600 = 26mV")
disp("       -0.9 = e^(V/0.026) - 1")
disp("        0.1 = e^(V/0.026)")
VT=0.026
V=log(0.1)*VT
disp(V,"Therefore,  V(V) = ")