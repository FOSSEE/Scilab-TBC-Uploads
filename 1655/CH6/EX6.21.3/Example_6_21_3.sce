// Example 6.21.3  page 6.60

clc;
clear;

tr=50;      //radiative recombination lifetime
tnr=110;     //non-radiative recombination lifetime
h=6.624d-34;  //plank's constant
c=3d8;      //speed of light
q=1.6d-19;  //charge of electron
i=40d-3;    //current
lamda=0.87d-6;      //wavelength

t=tr*tnr/(tr+tnr);          //computing total recombination time
eta=t/tr;                   //computing internal quantum efficiency
Pint=eta*h*c*i/(q*lamda);   //computing internally generated power
Pint=Pint*10^3

printf("\nTotal recombinaiton time is %.2f ns.\nInternal quantum efficiency is %.4f.\nInternally generated power is %.2f mW.",t,eta,Pint);

//answers in the book with slight deviaitons
//Total recombinaiton time is 34.37 ns, deviation of 0.01ns.
//Internal quantum efficiency is 0.6874, deviaiton of 0.0001.
//Internally generated power is 39.24 mW, deviation of 0.02mW.
