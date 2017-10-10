//ques-35.10
//Calculating fundamental frequency of DCl
clc
f1=2890;//fundamental frequency of HCl (in /cm)
r_m1=((1*35)/(1+35))*(10^-3/(6.023*10^23));//reduced mass of HCl
r_m2=((2*35)/(2+35))*(10^-3/(6.023*10^23));//reduced mass of DCl
f2=f1*sqrt(r_m1/r_m2);
printf("The fundamental frequency of DCl is %.0f /cm.",f2);
