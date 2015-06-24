clear; clc; close;

//part a

V1 = 1;
V2 = 2;
V3 = 3;
R1 = 500*10^(3);
R2 = 1*10^(6);
R3 = 1*10^(6);
Rf = 1000*10^(3);

Vo = -((Rf/R1)*V1+(Rf/R2)*V2+(Rf/R3)*V3);
disp(Vo,'Output voltage(Volts) = ');

//part b


V1 = -2;
V2 = 3;
V3 = 1;
R1 = 200*10^(3);
R2 = 500*10^(3);
R3 = 1*10^(6);
Rf = 1000*10^(3);

Vo = -((Rf/R1)*V1+(Rf/R2)*V2+(Rf/R3)*V3);
disp(Vo,'Output voltage(Volts) = ');
