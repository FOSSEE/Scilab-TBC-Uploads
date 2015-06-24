//Example 4.1.6   page 4.7

clc;
clear;

n= 0.65;
E= 1.5*10^-19;
Ip= 2.5*10^-6;
h= 6.625*10^-34;
c= 3*10^8;
lamda= h*c/E;
lamda=lamda*10^6; //converting in um for displaying...
printf("The wavelength is %.3f um",lamda);
lamda=lamda*10^-6;
q= 1.602*10^-19;
R= n*q*lamda/(h*c);
printf("\n\nThe Responsivity is %.4f A/W",R);
Pin= Ip/R;
Pin=Pin*10^6;// converting in uW for displaying/..
printf("\n\nThe incidnt power is %.1f uW",Pin);
