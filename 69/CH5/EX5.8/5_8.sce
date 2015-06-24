clear; clc; close;

Vcc = 16;
Vbe = 0.7;
Vt = 26*(10^(-3));
R1 = 90*(10^(3));
R2 = 10*(10^(3));
Re = 0.68*(10^(3));
Rc = 2.2*(10^(3));
ro = 50*(10^(3));
Beta = 210;

Vb = (R2/(R1+R2))*Vcc;
Ve = Vb - Vbe;
Ie = Ve/Re;
re = Vt/Ie;
disp(re,"Value of diode resistive element is(in ohms) :");

Rb = (R1*R2)/(R1+R2);
Zb = Beta*Re;
Zi = (Rb*Zb)/(Rb+Zb);
disp(Zi,"Input Impedance(ohms) :");

Zo = Rc;
disp(Zo,"Output Impedance(ohms) :");

Av = -Rc/Re;
disp(Av,"Voltage gain :");
