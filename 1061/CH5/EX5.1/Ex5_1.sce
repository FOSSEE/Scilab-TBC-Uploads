//Ex:5.1
clc;
clear;
close;
t=0.1*10^-6;// pulse broading in sec
d=12;// disance in km
B=1/(2*t);// max bandwidth MHz
ds=t/d;// dispersion in ns/km
bl=B*d;// bandwidth length product
printf("The max bandwidth =%d MHz", B/10^6);
printf("\n The dispersion =%f ns/km", ds*10^9);
printf("\n bandwidth length product =%d MHz km", bl/10^6);