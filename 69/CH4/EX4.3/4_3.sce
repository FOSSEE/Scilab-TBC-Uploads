clear; clc; close;

Vce = 16;
Ic = 10*10^(-3);
Vbe = 0.7;
Ib = 25*10^(-6);

Vcc = Vce;
Rc = Vcc/Ic;
Rb = (Vcc-Vbe)/Ib;

disp('At Q-point')
disp(Vcc,'Value of Vcc(Volts) is :');
disp(Rc,'Value of Rc(ohms) is :');
disp(Rb,'Value of Rb(ohms) is :');
