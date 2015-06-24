clear;
clc;
f=50;
dia=25e-3;
sp=.3;
D=6;

rad=dia/2;
r=.7788*rad;
GMR= ((r*r*sp*sp)^.25);
Dab= (D* (D+sp)* D *(D-sp))^.25;
Dbc=Dab;
Dac= ((2*D)* ((2*D) +sp)* (2*D) *((2*D)-sp))^.25;
Deq=(Dab * Dbc *Dac)^(1/3);
L=.4605 * log10 (Deq/GMR);
mprintf("\nL= %.3f mH/phase/km", L);
XL=2 * %pi * f * L *1e-3;
mprintf("\nXL= %.2f ohm/phase/km", XL);
