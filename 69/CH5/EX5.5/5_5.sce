clear; clc; close;

Vcc = 22;
Vbe = 0.7;
Vt = 26*(10^(-3));
R1 = 56*(10^(3));
R2 = 8.2*(10^(3));
Re = 1.5*(10^(3));
Rc = 6.8*(10^(3));
ro = 50*(10^(3));
Beta = 90;


Vb = (R2/(R1+R2))*Vcc;
Ve = Vb - Vbe;
Ie = Ve/Re;
re = Vt/Ie;
disp(re,"Value of diode resistive element is :");

disp("At ro=infinity,the values are :-");
Rx = (R1*R2)/(R1+R2);
Zb = Beta*re;
Zi = (Rx*Zb)/(Rx+Zb);
disp(Zi,"Input Impedance(ohms) :");

Zo = Rc;
disp(Zo,"Output Impedance(ohms) :");

Av = -Rc/re;
disp(Av,"Voltage gain :");

disp("At ro=1/hoe,the values are :-")
disp(Zi,"Input Impedance(ohms) :");
Zo_2 = (Rc*ro)/(Rc+ro);
disp(Zo_2,"Output Impedance(ohms) :");
Av_2 = -((ro*Rc)/(ro+Rc))/re;
disp(Av_2,"Voltage gain :");

