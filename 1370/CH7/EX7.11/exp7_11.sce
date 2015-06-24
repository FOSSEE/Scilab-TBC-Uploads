//Example 7.11
clc
disp("At V1 = 0.4 V, I1 = 10 mA and at V2 = 0.42 V, I2 = 2*I1 = 20 mA")
disp("Now  I = I_0 * (e^(V/eta*VT) - 1)")
disp("Therefore,  (10*10^-3) = I_0 * (e^(0.4/(eta*26*10^3)) - 1)          ...(1)")
disp("and  (20*10^-3) = I_0 * (e^(0.42/(eta*26*10^3)) - 1)                ...(2)")
disp("In forward bias condition 1 << e^(VT/eta*VT),  Therefore, Neglecting 1")
disp("(10*10^-3) = (I_0)*e^(15.384/eta)     ..(3)")
disp("and, (20*10^-3) = (I_0)*e^(16.153/eta)")
disp("Dividing the two equations (3) and (4),")
disp("(1/2) = (e^(15.384/eta))/(e^(16.153/eta))")
disp("Therefore, (e^(16.153/eta)) = 2*(e^(15.384/eta))")
disp("Taking natural logarithm of both sides,")
disp("Therefore, 16.153/eta = ln2 + 15.384/eta")
disp("Therefore, (1/eta)*(16.153-15.384) = 0.6931")
e=(16.153-15.384)/0.6931
disp(e,"Therefore, eta=")
disp("Hence (I_0)=9.45 nA")
