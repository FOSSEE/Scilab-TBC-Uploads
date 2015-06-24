//Example 6.2(b)

clear;

clc;

A0dB=60;

A0=10^(A0dB/20);

ft=10^6;

fb=ft/A0;

A10=A0^(1/2);

A20=A10;

fb1=ft/A10;

fb2=fb1;

f1=1+(%s/fb1);

A1=A10*(1/f1);

y1=syslin('c',A1);


f2=1+(%s/fb);

A=A0*(1/f2);

y2=syslin('c',A);

gainplot([y1;y2],10,10^6,['|A1|';'|A|']);