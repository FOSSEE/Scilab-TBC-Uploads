//ques-35.16
//Calculating internuclear distance of HCl molecule
clc
s=20.7;//interspacing (in /cm)
B=s/2;
I=(6.625*10^-34)/(8*%pi^2*B*100*3*10^8);
r_m=(1*35.5/1000)/((1+35.5)*6.023*10^23);//reduced mass (in kg)
r=sqrt(I/r_m);
printf("The internuclear distance for HCl molecule is %.1f pm.",r*10^12);
