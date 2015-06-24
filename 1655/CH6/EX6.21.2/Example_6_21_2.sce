// Example 6.21.2  page 6.59

clc;
clear;

tr=30;      //radiative recombination lifetime
tnr=100;     //non-radiative recombination lifetime
h=6.624d-34;  //plank's constant
c=3d8;      //speed of light
q=1.6d-19;  //charge of electron
i=40d-3;    //current
lamda=1310d-9;      //wavelength

t=tr*tnr/(tr+tnr);          //computing total recombination time
eta=t/tr;                   //computing internal quantum efficiency
Pint=eta*h*c*i/(q*lamda);   //computing internally generated power
Pint=Pint*10^3

printf("\nTotal recombinaiton time is %.2f ns.\nInternal quantum efficiency is %.3f.\nInternally generated power is %.2f mW.",t,eta,Pint);

//answer in the book for Total recombinaiton time is 23.07 ns, deviation of 0.01ns.
