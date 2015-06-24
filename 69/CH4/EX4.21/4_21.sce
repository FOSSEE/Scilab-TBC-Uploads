clear; clc; close;

Icq = 4*10^(-3);
Vcc = 28;
Vc = 18;
Vbe = 0.7;
Ve = 2.4;
Beta = 110;
Icsat = 8*10^(-3);

Rc = (Vcc-Vc)/Icq;
Re = (Vcc/Icsat)-Rc;
Ibq = Icq/Beta;
Rb = ((Vcc-Vbe)/Ibq) - (Beta+1)*Re;

disp(Rc,'Rc(ohms) is : ');
disp(Re,'Re(ohms) is : ');
disp(Rb,'Rb(ohms) is : ');

