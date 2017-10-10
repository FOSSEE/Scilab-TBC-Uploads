//Ex 2.5 page 69

clc;
clear;
close;

// VG=10*IG -- eqn(1)
PGM=5;// W
PGav=.5;// W
VS=12;// V
Tp=20;// us

// PGM = VG*IG where VG=10*IG
IG=sqrt(PGM/10);// A
VG=10*IG;// V
// During the application of pulse VS = VG+(IG*RS)
RS=(VS-VG)/IG ;// ohm
f=PGav/(PGM*Tp*10**-6)/1000;// kHz
delta=f*1000*Tp*10**-6;// Duty Cycle
printf('Value of resistance to be connected in series = %.2f ohm',RS)
printf('\n Triggering frequency = %.2f kHz',f)
printf('\n Duty Cycle = %.1f ',delta)
// Note : ans in the textbook is not accurate.
