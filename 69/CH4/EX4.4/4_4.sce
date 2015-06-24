clear; clc; close;

Vcc = 16;
Vbe = 0.7;  
Rb = 430*10^(3);
Rc = 2*10^(3);
Re = 1*10^(3);
Beta = 75;


Ib  = (Vcc-Vbe)/(Rb+(1+Beta)*Re);
Ic = Beta*Ib;
Vce = Vcc - Ic*(Rc+Re);
Vc = Vcc-Ic*Rc;
Ve = Vc - Vce;
Vb = Vbe + Ve;
Vbc = Vb - Vc;

disp(Ib,'Ib(Amperes) is : ');
disp(Ic,'Ic(Amperes) is : ');
disp(Vce,'Vce(volts) is : ');
disp(Vc,'Vc(Volts) is : ');
disp(Ve,'Ve(volts) is : ');
disp(Vb,'Vb(Volts) is : ');
disp(Vbc,'Vbc(Volts) is : ');
