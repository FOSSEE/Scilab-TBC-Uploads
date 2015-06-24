//Chapter 12
//page no 487
//given
clc;
clear all;
Ncso=80;
a=2.43*10^-3;
b=4.65*10^-3;
m=0.05;
//Part (i)
CSO=10*log10(Ncso*(a*m)^2);
printf("\n CSO distortion for 50 channel optical system for m = 5 percent \n CSOdB = %0.1f dB\n",CSO);   
//Part (ii)
CTO=10*log10(Ncso*(1.5*b*m)^2);
printf("\n CTO distortion for 50 channel optical system for m = 5 percent \n CTOdB = %0.1f dB\n",CTO);
//Part (iii)
m=0.03;

CSO=10*log10(Ncso*(a*m)^2);  
// Value of a in the book is considered 2.4 instead of 2.43
printf("\n CSO distortion for 50 channel optical system for m = 3 percent \n CSOdB = %0.1f dB\n",CSO);   

//Part (iv)
CTO=10*log10(Ncso*(1.5*b*m)^2);
printf("\n CTO distortion for 50 channel optical system for m = 3 percent \n CTOdB = %0.1f dB\n",CTO);
