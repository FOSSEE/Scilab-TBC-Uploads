//Example 6.2(c)

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

fB=(((((A10^2)*(2^(0.5)))/A0)-1)^(1/2))*fb1;

printf("Actual Bandwidth (fB)=%.2f kHz",fB*10^(-3));