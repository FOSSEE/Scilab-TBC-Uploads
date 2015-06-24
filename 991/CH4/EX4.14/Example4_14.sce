//Example 4.14
clc
format(5)
disp("The diode current,    I=Io*((e^((q*V)/(eta*k*T)))-1)")
disp("Therefore, 0.6*10^-3 = Io*((e^((q*V)/(eta*k*T)))-1) = Io*(e^((q*V)/(eta*k*T)))")
disp("                     = Io*e^(400/25*eta) = Io*e^(16/eta)         Eq.1")
disp("Also,       20*10^-3 = Io*e^(500/25*eta) = Io*e^(20/eta)         Eq.2")
disp("Dividing Eq.2 by Eq.1, we get")
disp("100/3 = e^(4/eta)")
disp("Taking natural logarithms on both sides, we get")
disp("   loge (100/3) = 4 / eta")
disp("          3.507 = 4 / eta")
eta=4/log(100/3)
disp(eta,"Therefore,  eta = ")