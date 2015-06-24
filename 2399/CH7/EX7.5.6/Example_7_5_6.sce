// Example 7.5.6 
clc;
clear;
h=6.626d-34;    //plank's constant
c=3d8;      //speed of light
q=1.6d-19;  //charge of electron
E=1.35;      //energy gap in eV
lamda=h*c/(q*E);   //computing wavelength
lamda=lamda*10^6;
printf("\nThe InP photodetector will stop operation above %.2f micrometer.",lamda);
printf("\nNOTE - calculation error in the book");
//calculation error in the book
//answer in the book 1.47 micrometer.(incorrect)
