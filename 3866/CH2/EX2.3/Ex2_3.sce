clear; clc; close;

tox=22*(10^(-10));
na=3*(10^(17));
qe=1.602*(10^(-19));//electron_charge
eox=8.85*(10^(-14));
esi=11.7*eox;
cox=(4*eox)/tox;
y=sqrt(2*qe*esi*na)/cox;
disp(cox,'oxide capacitance (in F/m^2)');
disp(y,'body factor');
