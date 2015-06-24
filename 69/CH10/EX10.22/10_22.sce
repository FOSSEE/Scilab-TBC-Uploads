clear; clc; close;

Vi1 = 150*10^(-6);
Vi2 = 140*10^(-6);
Ad = 4000;

//part a 
CMRR = 100;

Vd = Vi1 - Vi2;
Vc = 1/2*(Vi1+Vi2);
Vo = Ad*Vd*(1+(1/CMRR)*(Vc/Vd));
disp(Vo,'Output voltage(Volts) = ');


//part b

CMRR = 100000;

Vd = Vi1 - Vi2;
Vc = 1/2*(Vi1+Vi2);
Vo = Ad*Vd*(1+(1/CMRR)*(Vc/Vd));
disp(Vo,'Output voltage(Volts) = ');
