//1.2
clc;
disp('When thyristor is not conducting there is no current through it')
disp('so Vo=20V')
VG=0.75;
IG=7*10^-3;
RG=2000;
Vs=VG+IG*RG;
printf("Voltage required to Turn On The thyristor = %.2f V", Vs)
R= 200;
VR=5*10^-3*R;
printf("/nVoltage drop across R = %.0f V", VR)
disp('Hence Vcc should be reduced to less than 1V')
Vconduct=0.7;
Vreq=VR+Vconduct;
printf("Voltage required = %.1f V", Vreq)
disp('Hence Vcc should be reduced to less than 1.7V')
