//Example 2.17//series equivalent of unknown impedence
clc;
clear;
R1=235;//in killo ohms
C1=0.012;//capacitance in micro farads
R2=2.5;//in killo ohms
R3=50;// in kilo ohms
Rx=(R2*R3)/(R1);//in killo ohms
Lx=C1*10^-6*R2*R3*10^6;//in henry
disp(Rx,"unknown resistance in killo ohms")
disp(Lx,"inductance in henry")
