clear; clc; close;

Vcc = 20;
Rb = 1*10^(3);
Rc = 20;
Beta = 25;
Ib_p = 10*10^(-3);


Ibq = (Vcc-0.7)/Rb;
Ib = Ibq;
Icq = Beta*Ibq;
Ic=  Icq;
Vceq = Vcc-Ic*Rc;
Ic_p = Beta*Ib_p;
Po_ac = (Ic_p^2)*Rc/2;
Pi_dc = Vcc*Icq;
n = (Po_ac/Pi_dc)*100;

disp(Po_ac,'Output power = ');
disp(Pi_dc,'Input power = ');
disp(n,'Efficiency in percentage = ');
