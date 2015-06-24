//Ex:7.14
clc;
clear;
close;
n=1;
n1=1.48;
r=((n1-n)/(n1+n))^2;// fresnel's reflection
Ls=-10*log(1-r)/log(10);// optical loss in dB
Lt=2*Ls;// total fresnel loss
printf("The total fresnel loss =%f dB", Lt);