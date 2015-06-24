//Ex:7.11
clc;
clear;
close;
n1=1.5;// core refractive index
n=1;// refractive index due to air
x=5*%pi/180;
C=n1/n;
A=(16*C^2)/((1+C)^4);
B=n*x;
NA=0.22;// numerical aperture
n_ang=A*(1-(B/(%pi*NA)));// angular coupling efficiency
L_ang=-10*log(n_ang)/log(10);// inserion loss when NA=0.22
NA1=0.32;// numerical aperture
n_ang1=A*(1-(B/(%pi*NA1)));// angular coupling efficiency
L_ang1=-10*log(n_ang1)/log(10);// inserion loss when NA=0.32
printf("The inserion loss when NA=0.22 =%f dB", L_ang);
printf("\n The inserion loss when NA=0.32 =%f dB", L_ang1);