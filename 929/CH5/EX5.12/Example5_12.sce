//Example 5.12

clear;

clc;

R6=27;

b14=250;

b15=b14;

Vbe15on=0.7;

IC14=Vbe15on/R6;

IB14=IC14/b14;

i=0.18*10^(-3);

IC15=i-IB14;

Isc=IC14+IC15;

printf("IC14=%.f mA",IC14*10^3);

printf("\nIB14=%.3f mA",IB14*10^3);

printf("\nIC15=%.f uA",IC15*10^6);

printf("\nIsc=%.f mA",Isc*10^3);