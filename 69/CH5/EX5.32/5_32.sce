clear; clc; close;

hfb = -0.99;
hib = 14.3;
hob = 0.5*(10^(-6));
Re = 2.2*(10^(3));
Rc = 3.3*(10^(3));

Zi = (Re*hib)/(Re+hib);
disp(Zi,"Input impedance(Zi) :");
ro=1/hob;
Zo = (ro*Rc)/(ro+Rc);
disp(Zo,"Output impedance(Zo) :");
Av = -hfb*Rc/hib;
disp(Av,"Voltage gain(Av) :");
Ai = hfb;
disp(Ai,"Current gain(Ai) :");
