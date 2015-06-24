//Example 3.2.7 page 3.16

clc;
clear;
lamda = 0.87*10^-6;
Tr= 50*10^-9;
I= 0.04;
Tnr= 110*10^-9;
t= Tr*Tnr/(Tr+Tnr);
t=t*10^9;  //converting in ns...
printf("Total carrier recombination life time is %.2f ns",t);
t=t/10^9;
h= 6.625*10^-34;    //plancks const
c= 3*10^8;
q=1.602*10^-19;
n= t/Tr;
printf("\n\nThe efficiency is %.3f %%",n);
Pint=(n*h*c*I)/(q*lamda)*1000;
printf("\n\nInternal power generated is %.2f mW",Pint);
printf("\n\n***NOTE- Internal Power wrong in book... ");
