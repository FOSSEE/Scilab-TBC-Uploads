clear; clc; close;

Ri_stage2 = 15*(10^(3))*4.7*(10^(3))*1300/(15*(10^(3))*4.7*(10^(3))+4.7*(10^(3))*1300+15*(10^(3))*1300);
Rd1 = 2.4*10^(3);
Rd2 = 2.2*10^(3);
gm = 2.6*10^(-3);
Vi1 = 20*10^(-3);
Vi2 = 1*10^(-3);

Av1 = -gm*(Rd1*Ri_stage2/(Rd1+Ri_stage2));
Av2 = -338.46;
Av = Av1*Av2;
Vo1 = Av*Vi1;
Vo2 = Av*Vi2;
Zi = 3.3*10^(6);
Zo = Rd2;


disp(Vo2,'Output voltage is ');
disp(Zi,'Input impedance is ');
disp(Zo,'Output impedance is ');
