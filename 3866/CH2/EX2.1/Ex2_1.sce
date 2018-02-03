clear; close; clc;

kc=1.380*(10^(-23));//constant
te=300;//room_temp_in_kelvin
qe=1.602*(10^(-19));//electron_charge
ni=1.45*(10^10);
p=3*(10^17);
deg=2*kc*te*abs(log(ni/p))/qe;
disp(deg,'degree of band bending(in volt):');
