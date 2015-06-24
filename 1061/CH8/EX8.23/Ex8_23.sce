//Ex:8.23
clc;
clear;
close;
po=2*10^-3;// optical power in watts
I=100*10^-3;// current in amp
V=2;// applied voltage in volt
pe=I*V;// electrical power in watts
n=(po/pe)*100;// conversion efficiency
printf("The conversion efficiency =%d %%", n);