clear; close; clc;

kc=1.380*(10^(-23));//constant
te=300;//room_temp_in_kelvin
qe=1.602*(10^(-19));//electron_charge
eo=8.85*(10^(-14));
ni=1.45*(10^10);
p=3*(10^17);
fg=0.55;
s=2*(10^10);//in_cm^(-2)
tox=22*(10^(-8));//in_cm
esi=11.7*eo;
ffp=kc*te*log(ni/p)/qe;
fgc=ffp-fg;
eox=4*eo;
cox=eox/tox;
qbo=-sqrt(2*qe*p*esi*abs(2*ffp));
vto=fgc-(2*ffp)-(qbo/cox)-(s*qe/cox);
disp(vto,'zero bias threshold voltage(in volts=)');
