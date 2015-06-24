clear; clc; close;

Vgg = 2;
Idss = 10*10^(-3);
Vp = -4;
Vdd = 16;
Rd = 2*10^(3);

Vgs = -Vgg;
Id = Idss*(1-(Vgs/Vp))^2;
Vds = Vdd - Id*Rd;
Vd = Vds;
Vg = Vgs;
Vs = 0;

disp(Vgs,'Vgsq(Volts) = ');
disp(Id,'Idq(Amperes) = ');
disp(Vds,'Vds(Volts) = ');
disp(Vd,'Vd(Volts) = ');
disp(Vg,'Vg(Volts) = ');
disp(Vs,'Vs(Volts) = ');

