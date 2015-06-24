// Example 7.5.3  page 7.24

clc;
clear;

lamda1=1300d-9;
lamda2=1600d-9;
h=6.625d-34;    //plank's constant
c=3d8;      //speed of light
q=1.6d-19;  //charge of electron
eta=90/100; //quantum efficiency
E=0.73;      //energy gap in eV
R1=eta*q*lamda1/(h*c);
R2=eta*q*lamda2/(h*c);
lamdac=1.24/E;

printf("\nResponsivity at 1300nm is %.2f A/W.\nResponsivity at 1600nm is %.2f A/W.\nCut-off wavelength is %.1f micrometer.",R1,R2,lamdac);

//R1 is calculated as 0.92 in the book, deviation of 0.02.
