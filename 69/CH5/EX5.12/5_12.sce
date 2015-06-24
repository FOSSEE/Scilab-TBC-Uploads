clear; clc; close;

Vcc = 9;
Vbe = 0.7;
Vt = 26*(10^(-3));
Rf = 180*(10^(3));
Rc = 2.7*(10^(3));
Beta = 200;
ro = %inf;

disp("Values at ro=infinity are :-");
Ib = (Vcc-Vbe)/(Rf+(Beta*Rc));
Ie = (Beta+1)*Ib;
re = Vt/Ie;
disp(re,"Value of diode resistive element(re) :");

Zi = re/((1/Beta)+(Rc/Rf));
disp(Zi,"Input Impedance(Zi) :");

Zo = (Rc*Rf)/(Rc+Rf);
disp(Zo,"Output Impedance(Zo) :");

Av = -Rc/re;
disp(Av,"Voltage gain(Av) :");
disp("Values at ro=25kohm are :- ");
ro_2 = 20*(10^(3));

Zi_2 = (1+((Rc*ro_2)/(Rc+ro_2))/Rf)/((1/(Beta*re))+(1/Rf)+(((Rc*ro_2)/(Rc+ro_2))/(Rf*re)));
disp(Zi_2,"Input Impedance(Zi) :");

Zo_2 = (ro_2*Rc*Rf)/(ro_2*Rc+Rc*Rf+Rf*ro_2);
disp(Zo_2,"Output Impedance(Zo) :");

Av_2 = -[1/Rf + 1/re]*[ro_2*Rc/(ro_2+Rc)]/[1+[(ro_2*Rc)/(ro_2+Rc)]/Rf];
disp(Av_2,"Voltage gain(Av) :");
