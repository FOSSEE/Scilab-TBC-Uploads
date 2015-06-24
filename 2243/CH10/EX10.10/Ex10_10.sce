clc();
clear;
//Given :
er = 6.75 ; // relative dielectric constant for glass
f = 10^9 ;// frequency in Hz
n = 1.5;// refractive index of glass
e0 = 8.85*10^-12; // dielectric constant in farad/m
//Pe = e0*(n^2 - 1)*E  , Pi = e0*(er - n^2)*E ,  P = Pi + Pe = e0*(er - 1)*E
//Percentage = [(e0*(er - n^2)*E)/(e0*(er -1)*E)]*100 , both the E's cancel each other
per = [(e0*(er - n^2))/(e0*(er -1))]*100;// percentage
printf("Percentage = %.1f",per);
