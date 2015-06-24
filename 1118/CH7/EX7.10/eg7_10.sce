//taking calculations in eg7.3
clear;
//clc();
dm=7.56;
dsc=12.5/1000;
r=dsc;

cn=1/(18*10^(9)*log([dm/dsc]))*10^(12);
printf("the capacitance is: %.2f*10^(-9) F/km\n ",cn);

xc=1/(2*(%pi)*50*cn);
printf("the reactance is: %.2f*10^(5) Ohm\n ",xc*10000);
