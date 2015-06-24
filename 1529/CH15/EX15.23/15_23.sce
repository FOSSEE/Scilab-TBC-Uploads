//Chapter 15, Problem 23
clc;
R=10;                             //resistance in ohm
L=20e-3;                         //inductance in henry
f=5000;                             //resonant frequency
w=2*%pi*f;
Qr=(w*L)/R;                         //Q-factor at resonance
B=f/Qr;                             //bandwidth
printf("Bandwidth of the filter = %.2f Hz",B);
