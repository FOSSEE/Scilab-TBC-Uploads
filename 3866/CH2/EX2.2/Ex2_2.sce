clear; close; clc;

kc=1.380*(10^(-23));//constant
te=300;//room_temp_in_kelvin
qe=1.602*(10^(-19));//electron_charge
ni=1.45*(10^10);
p=3*(10^17);
esi=11.7*8.85*(10^(-14));
deg=2*kc*te*abs(log(ni/p))/qe;
xd=sqrt((2*esi*deg)/(qe*p));
qb=-sqrt(2*qe*p*esi*abs(-deg));
disp(deg,'degree of band bending(in volt):');
disp(xd,'limiting value of depletion layer width(in cm)');
disp(qb,'total charge in depleted region(in C/cm^2)');
