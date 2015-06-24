clear; clc; close;

Vcc = 15;
Vbe = 0.7;
Vt = 26*(10^(-3));
Rb = 470*(10^(3));
Rc = 4.7*(10^(3));
ro = 50*(10^(3));
Beta = 100;


Ib = (Vcc-Vbe)/Rb;
Ie = (Beta+1)*Ib;
re = Vt/Ie;
disp(re,"Value of diode resistive element is :")

Zb = Beta*re;    //resistance seen from base into the diode
Zi = (Rb*Zb)/(Rb+Zb);
disp(Zi,"Input impedance(ohms) :");

disp("At ro = infinity values are :-");
Zo = Rc;
disp(Zo,"Output impedance(ohms) :");

Av = -Rc/re;
disp(Av,"Voltage gain :");

disp("At ro = 50kohm,values are :-");
Zo_2 = (ro*Rc)/(ro+Rc);
disp(Zo_2,"Input impedance(ohms) :");

Av_2 = -((ro*Rc)/(ro+Rc))/re;
disp(Av_2,"Voltage gain :");
