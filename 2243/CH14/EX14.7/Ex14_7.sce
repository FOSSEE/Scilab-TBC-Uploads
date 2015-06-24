clc();
clear;
//Given :
c = 3*10^8;// light speed in m/s
//Visible range = 4000 A - 7000 A
lambda1 = 4000; // wavelength in A
lambda2 = 7000;// wavelength in A
// 1 A = 1.0*10^-10 m
nu1 = c/(lambda1*10^-10); // frequency in Hz
nu2 = c/(lambda2*10^-10);// frequency in Hz
deltanu = nu1-nu2; // in Hz
//(a)Telephone conversations
f1 = 10^3; // frequency in Hz
n1 = deltanu/f1;
//(b)Television programmes
f2 = 10^7; // frequency in Hz
n2 = deltanu/f2;
printf(" Number of Telephone conversations = %.1f x 10^11 \n",n1*10^-11);
printf(" Number of Television programmes  = %.1f x 10^7 \n",n2*10^-7);
