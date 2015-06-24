clear; clc; close;

Vcc = 18;
Vt = 26*(10^(-3));
Beta = 200;

Vb1 = 4.9;
Vb2 = 10.8;
Ic1 = 3.8*(10^(-3));
Ic2 = 3.8*(10^-(3));
Ie = Ic1;
Re1 = 1.1*(10^(3));
Rc2 = 1.8*(10^(3));


re = Vt/Ie;
Rc1 = re;
Av1 = -Rc1/re;

Av2 = Rc2/re;
Avt = Av1*Av2;
disp(Avt,"no-load voltage gain(Avt) :");
