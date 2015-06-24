//Example 7.10
clc
disp("the given values are I_0 = 3 uA, T = 27 C = 27+273 = 300 K, eta =1")
disp("Now  I_rated = 1 A for diode")
disp("and  I = 1% of I_rated at 27 C")
disp("Therefore,  I = 0.01 A")
vt=300*8.62*10^-5
format(6)
disp(vt,"V_T(in V) = k*T =")
disp("According to diode equation,  I = I_0 * (e^(V/eta*VT) - 1)")
v=8.112*0.026
format(7)
disp(v,"Therefore,  V(in V) =")
