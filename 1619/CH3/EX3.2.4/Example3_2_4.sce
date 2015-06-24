//Example 3.2.4 page 3.13
clc;
clear;
lamda = 1310*10^-9;
Tr= 30*10^-9;
Tnr= 100*10^-9;
I= 40*10^-3;
t= Tr*Tnr/(Tr+Tnr);
t=t*10^9;  //converting in nano secs...
printf("Bulk recombination life time %.2f ns",t);
t=t/10^9;
n= t/Tr;
printf("\n\nInternal quantum efficiency is %.3f",n);
h= 6.625*10^-34;    //plancks const
c= 3*10^8;
q=1.602*10^-19;
Pint=(0.769*h*c*I)/(q*lamda)*1000;
printf("\n\nThe internal power level is %.3f mW",Pint);
printf("\n\n***NOTE: Internal Power wrong in text book.. Calculation Error..");
