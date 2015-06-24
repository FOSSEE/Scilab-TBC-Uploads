clear; clc; close;

Vcc = 20;
Vbe = 0.7;
Vt = 26*(10^(-3));
Re = 0.56*(10^(3));
Rc = 2.2*(10^(3));
Rb = 470*(10^(3));
ro = 40*(10^(3));
Beta = 120;

Ib = (Vcc-Vbe)/(Rb+(Beta+1)*Re);
Ie = (Beta+1)*Ib;
re = Vt/Ie;
disp(re,"Value of diode resistive element is :");

Zb = Beta*(re+Re);
Zi = (Rb*Zb)/(Rb+Zb);
disp(Zi,"Input Impedance(ohms) :");

Zo = Rc;
disp(Zo,"Output Impedance(ohms) :");

Av = -Beta*Rc/Zb;
disp(Av,"Voltage gain :");
