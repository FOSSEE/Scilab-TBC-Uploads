clear; clc; close;

Idss = 10*10^(-3);
Vp = -4;
Vdd = 20;
Rd = 1.5*10^(3);

Vgsq = 0;
disp(Vgsq,'Q-point value of Vgs(found after interpolation) is :');

Idq = 10*10^(-3);

Vd = Vdd - Idq*(Rd);

disp(Idq,'Idq(Amperes) = ');
disp(Vd,'Vds(Volts) = ');
