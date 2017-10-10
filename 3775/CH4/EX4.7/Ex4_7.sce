//Ex 4.7 page 161

clc;
clear;
close;


R=3;// ohm
wL=4;//ohm
Vs=230;// V
f=50;// Hz

fi=atan(wL/R)*180/%pi;//degree
printf('\n (i) control range of firing angle = %.2f to pi',fi)
Imax=Vs/sqrt(R**2+wL**2);// A
printf('\n (ii) max rms load current = %.f A', Imax)
Pmax=Imax**2*R;//W
printf('\n (iii) max power input to load = %.f W', Pmax)
pf_max=Pmax/Vs/Imax;// power factor
printf('\n (iv) max power factor = %.1f ', pf_max)
Ithrms=Imax/sqrt(2);// A
Ithav=Ithrms/1.57;// A
printf('\n (v) max rms thyristor current = %.3f A', Ithrms)
printf('\n     max average thyristor current = %.3f A', Ithav)
