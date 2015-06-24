//Ex:4.12
clc;
clear;
close;
y=1.35;// wavelength in um
d=5;// core diamater in um
a=0.75;// attenuation in dB/km
v=0.45;// bandwidth in GHz
Pb=4.4*10^-3*(d^2)*(y^2)*(a*v);// threshold optical power for sbs
Pr=5.9*10^-2*(d^2)*(y)*(a);// threshold optical power for sbr
Pbr=Pb/Pr;// the ratio of threshold power level
printf("The ratio of threshold power level=%f %%", Pbr*100);