clear; clc; close;

Re = 1.2*10^(3);
Rc = 4.7*10^(3);
Rb = 250*10^(3);
Vcc = 10;
Vbe = 0.7;
Beta = 90;

Ib = (Vcc - Vbe)/(Rb + (Beta)*(Re+Rc));
Icq = Beta*Ib;
Vceq = Vcc - Icq*(Rc+Re);
disp(Icq,'Value of Icq(Amperes) is : ');
disp(Vceq,'Value of Vceq(Volts) : ');

