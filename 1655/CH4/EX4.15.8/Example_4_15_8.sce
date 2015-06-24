// Example 4.15.8  page 4.41

clc;
clear;

tau=0.1d-6;     //pulse broadning
dist=10d3;      //distance

Bopt=1/(2*tau);     //computing optical bandwidth
Bopt=Bopt*10^-6;
dispertion=tau/dist;        //computing dispersion
dispertion=dispertion*10^12;
BLP=Bopt*dist;      //computing Bandwidth length product
BLP=BLP*10^-3;
printf("\noptical bandwidth is %d MHz.\nDispersion per unit length is %.1f ns/km.\nBandwidth length product is %d MHz.km.",Bopt,dispertion,BLP);
