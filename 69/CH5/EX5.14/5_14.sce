clear; clc; close;

Vcc = 15;
Vbe = 0.7;
Vt = 26*(10^(-3));
Rb = 470*(10^(3));
Rc = 4.7*(10^(3));
Rl = 4.7*(10^(3));
Rs = 0.3*(10^(3));
ro = 50*(10^(3));
Beta = 100;


Ib = (Vcc-Vbe)/Rb;
Ie = (Beta+1)*Ib;
re = Vt/Ie;
disp(re,"Value of diode resistive element(re) :")

Zb = Beta*re;
Zi_prev = (Rb*Zb)/(Rb+Zb);
disp(Zi_prev,"Input Impedance(Zi) :");

Zo_prev = Rc;
disp(Zo_prev,"Output Impedance(Zo) :");

Av_prev = -Rc/re;
disp(Av_prev,"Voltage gain(Av) with no-load :");



Av = -[(Rc*Rl)/(Rc+Rl)]/re;
disp(Av,"Voltage gain(Av) with 4.7kohm load :");

Avs = (Zi_prev/(Zi_prev+Rs))*Av;
disp(Avs,"Voltage gain(Avs) from source to output with 4.7kohm load :");
disp(Av_prev,"Voltage gain(Av) with no-load :");
