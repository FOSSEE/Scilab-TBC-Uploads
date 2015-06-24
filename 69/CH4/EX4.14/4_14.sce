clear; clc; close;

Re = 0;
Rc = 4.7*10^(3);
Rb = 680*10^(3);
Vcc = 20;
Vbe = 0.7;
Beta = 120;

Ib = (Vcc - Vbe)/(Rb + (Beta)*(Rc));
Icq = Beta*Ib;
Vceq = Vcc - Icq*(Rc);
Vb = Vbe;
Vc = Vceq;
Ve = 0;
Vbc = Vb-Vc;
disp(Icq,'Value of Icq(Amperes) is : ');
disp(Vceq,'Value of Vceq(Volts) : ');
disp(Vc,'Vc(volts) is : ');
disp(Vb,'Vb(volts) is :');
disp(Ve,'Ve(volts) is :');
disp(Vbc,'Vbc(volts) is :');

