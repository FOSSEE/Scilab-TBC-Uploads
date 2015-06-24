//Example 7.12
clc
disp("I_01 = 3 nA at T1 = 27 C, T2 = 82 C")
dt=82-27
format(3)
disp(dt,"(i) deltaT(in degree C) = T2 - T1 =")
dt1=(2^(55/10))*3
format(8)
disp(dt1,"Therefore,  I_02(in nA) = 2^(deltaT/10) * I_01 =")
disp("(ii) V = 0.25 V, I_02 = 135.764 nA at 82 C")
disp("Thereforem  I_f = I_0 * (e^(V/eta*VT) - 1)")
vt=(82+273)/11600
format(7)
disp(vt,"V_T(in V) = T/11600 =")
disp("eta = 2 for Si")
i0=((135.764*10^-9)*((%e^(0.25/(2*0.0306)))-1))*10^6
format(6)
disp(i0,"Therefore,  I_f(in uA) =")
