//Example 11.9

clear;

clc;

RB=510;

RE=3.3*10^3;

Vo=5;

Vref=1.282;

R2R1rat=(Vo/Vref)-1;

Io=1;

b1=20;

b2=100

VBE2=0.7;

VBE1=1;

IE1=Io;

IB1=IE1/(b1+1);

IE2=IB1+(VBE1/RE);

IB2=IE2/(b2+1);

IOA=IB2;

VOA=(IB2*RB)+VBE2+VBE1+Vo;

printf("(a) R2/R1=%.1f",R2R1rat);

printf("\n\n(b) The error amplifier must thus force IOA=%.2f mA",IOA*10^3);

printf("\n                                        VOA=%.f V",VOA);

VImin=VOA+0.5;

VDO=VImin-Vo;

printf("\n\n(c) The dropout voltage VDO=%.1f V",VDO+0.1);

pereffmax=100*(Vo/VImin);

printf("\n\n(d) Maximum Percentage efficiency=%.f percentage",pereffmax);