clc();
clear;
//Given:
m = 2.01*1.66*10^-27; // deuteron mass in kg
q = 1.6*10^-19; // deuteron charge in C
//We know , 1/2(m*v^2) = q*V
//for a 5 MeV deuteron 
// 1 MeV = 10^6*1.6*10^-19 J
v =((2*5*10^6*1.6*10^-19)/m)^(1/2) ; // velocity in m/s
//(a)
R = 15; // inches 
//1 inch = 2.54*10^-2 m
B = (m*v)/(q*R*2.54*10^-2);// magnetic field intensity in Wb/m^2
//(b)
f = (q*B)/(2*%pi*m); // frequency in Hz
//(c)
t = 50/f; // time in s
printf("B = %.1f Wb/m^2  \n",B);
printf("f = %.2f MHz  \n",f*10^-6);
printf("t = %.2f  mu s ",t*10^6);
