//Chapter 13
//Example 13_25
//Page 338

clear;clc;

I=10.65/0.26;
vbd=30.96*.025+.96*.01;
e0=.7836;
r0=(.075+.1+.05)*(.025+.01)/(.075+.1+.05+.025+.01);
ibd=e0/(r0+0.05);
vdrop=9.8*0.05;

printf("I = %.2f A \n", I);
printf("Voltage drop along BCD = %.4f V \n", vbd);
printf("Thevenin voltage E0 = %.4f V \n", e0);
printf("Ro = %.3f ohms \n", r0);
printf("(i) Current in interconnector = %.2f A \n", ibd);
printf("(ii) Voltage drop along interconnector = %.2f V \n", vdrop);
