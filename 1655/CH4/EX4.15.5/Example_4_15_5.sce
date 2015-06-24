// Example 4.15.5  page 4.39

clc;
clear;

tau=0.1d-6;     //pulse broadning
dist=15d3;      //distance

Bopt=1/(2*tau);     //computing optical bandwidth
Bopt=Bopt*10^-6;
dispertion=tau/dist;        //computing dispersion
dispertion=dispertion*10^12;
printf("\noptical bandwidth is %d MHz.\nDispersion per unit length is %.2f ns/km.",Bopt,dispertion);
