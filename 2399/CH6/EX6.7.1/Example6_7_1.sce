// Example 6.7.1 
clc;
clear;
tr=50;      //radiative recombination lifetime
tnr=85;     //non-radiative recombination lifetime
h=6.624d-34;  //plank's constant
c=3d8;      //speed of light
q=1.6d-19;  //charge of electron
i=35d-3;    //current
lamda=0.85d-6;      //wavelength
t=tr*tnr/(tr+tnr);          //computing total recombination time
eta=t/tr;                   //computing internal quantum efficiency
Pint=eta*h*c*i/(q*lamda);   //computing internally generated power
Pint=Pint*10^3
printf("\nTotal recombinaiton time is %.2f ns.\nInternal quantum efficiency is %.3f.\nInternally generated power is %.1f mW.",t,eta,Pint);
//answer in the book for Internal quantum efficiency is 0.629, deviation of 0.001.
//answer in the book for Internally generated power is 32.16 mW, deviation of 0.04 mW.
