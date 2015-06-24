clear; clc; close;

Vcc = 10;
a = 3;
Rl = 8;


Vceq = Vcc;
Vce = Vceq;
Icq = 140*10^(-3);

Rl_dash = (a^2)*Rl;
Ic = Vce/Rl_dash;

Vce_min = 1.7;
Vce_max = 18.3;
Ic_min = 25*10^(-3);
Ic_max = 255*10^(-3);

Po_ac = (Vce_max-Vce_min)*(Ic_max-Ic_min)/8;

disp(Po_ac,'Ac Power delivered(Watts) = ');
