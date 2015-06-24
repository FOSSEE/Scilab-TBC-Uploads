clear; clc; close;

Vcc = 10;
Vbe = 0.7;
Beta_dc = 250;
Icsat = 10*10^(-3);

Rc = Vcc/Icsat;
Ib_min = Icsat/Beta_dc;
Rb = (Vcc-Vbe)/Ib_min;
//if we take standard Rb value then
Rb = 150*10^(3);
Ib = (Vcc-Vbe)/Rb;

disp(Rc,'value of Rc(ohms) is : ');
disp(Rb,'value of Rb(ohms) is : ');
