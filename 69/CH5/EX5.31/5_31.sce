clear; clc; close;

Vcc = 10;
Vbe = 0.7;
hfe = 120;
hie = 1.175*(10^(3));
hoe = 20*(10^(-6));
Rb = 470*(10^(3));
Rc = 2.7*(10^(3));

Zi = (Rb*hie)/(Rb+hie);
disp(Zi,"Input impedance(Zi) :");
ro = 1/hoe;
Zo = (ro*Rc)/(ro+Rc);
disp(Zo,"Output impedance(Zo) :");
Av = -hfe*Zo/hie;
disp(Av,"Voltage gain(Av) :");
Ai = hfe;
disp(Ai,"Current gain(Ai) :");
