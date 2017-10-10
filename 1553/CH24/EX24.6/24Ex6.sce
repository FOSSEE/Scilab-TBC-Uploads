//chapter 24 Ex 6

clc;
clear;
close;
excess=5/100; deficit=4/100;
Error=((1+excess)*(1-deficit))-1;
ErrorPercent=Error*100;
mprintf("The percentage error is %.1f percent",ErrorPercent);
