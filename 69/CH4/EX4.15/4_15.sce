clear; clc; close;

Re = 0;
Rc = 1.2*10^(3);
Rb = 100*10^(3);
Vee = 9;
Vbe = 0.7;
Beta = 45;

Ib = (Vee-Vbe)/Rb;
Ic = Beta*Ib;
Vc = -Ic*Rc;
Vb = -Ib*Rb;
disp(Vc,'Vc(Volts) is :');
disp(Vb,'Vb(Volts) is :');
