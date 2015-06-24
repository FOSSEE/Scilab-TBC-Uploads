clear; clc; close;

R1 = 39*10^(3);
R2 = 3.9*10^(3);
Re = 1.5*10^(3);
Rc = 4*10^(3);
Vcc = 18;
Vbe = 0.7;
Beta = 140;
Ic = 0.63*10^(-3);

disp('Since the approximate technique can be applied,hence ');
Eth = R2*Vcc/(R1+R2);
Vb = Eth;
Ve = Vb - Vbe;
Icq = Ve/Re;
Vceq = Vcc - Ic*(Rc+Re);

disp(Icq,'Value of Icq(Amperes) is : ');
disp(Vceq,'Value of Vceq(Volts) : ');
