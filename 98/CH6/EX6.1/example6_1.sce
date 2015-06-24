//Chapter 6
//Example 6_1
//Page 109

clear;clc;

kw=300;
pf=0.6;

kva=kw/pf;
p=kva-kw;

printf("kVA = %0.f kW \n\n", kva);
printf("Increased power supplied by the alternator = %0.f kW \n\n", p);

