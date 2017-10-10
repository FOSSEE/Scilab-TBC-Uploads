clc;
slewrate=500000;
Vpk=8;
fmax=slewrate/(2*3.14*Vpk);
disp('kHz',fmax/1000,"fmax=");
