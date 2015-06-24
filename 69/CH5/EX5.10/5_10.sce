clear; clc; close;

Vcc = 12;
Vbe = 0.7;
Vt = 26*(10^(-3));
Re = 3.3*(10^(3));
Rb = 220*(10^(3));
ro = %inf;
Beta = 100;

disp("For ro=infinity the values are:-");
Ib = (Vcc-Vbe)/(Rb+(Beta+1)*Re);
Ie = (Beta+1)*Ib;
re = Vt/Ie;
disp(re,"Value of diode resistive element is(in ohms) :");

Zb = (Beta*re) + ((Beta+1)*Re);
Zi = (Rb*Zb)/(Rb+Zb);
disp(Zi,"Input Impedance(ohms) :");

Zo = (Re*re)/(Re+re);
disp(Zo,"Output Impedance(ohms) :");

Av = Re/(Re+re);
disp(Av,"Voltage gain :");

disp("For ro=25kohm the values are :-")
ro_2 = 25*(10^(3));

Zb_2 = (Beta*re) + ((Beta+1)*Re)/(1+(Re/ro_2));
Zi_2 = (Rb*Zb_2)/(Rb+Zb_2);
disp(Zi_2,"Input Impedance(ohms) :");

Zo_2 = (Re*re)/(Re+re);
disp(Zo_2,"Output Impedance(ohms) :");

Av_2 = (((Beta+1)*Re)/Zb_2)/(1+(Re/ro_2));
disp(Av_2,"Voltage gain :");
