// Example 7.2.1 
clc;
clear;
n1=3.4;    //refractive index of optical source
n=1.46;     //refractive index of silica fiber
r=((n1-n)/(n1+n))^2;    //computing Frensel reflection
L=-10*log10(1-r);      //computing loss
printf("\nFrensel reflection is %.3f.\nPower loss is %.2f dB.",r,L);
