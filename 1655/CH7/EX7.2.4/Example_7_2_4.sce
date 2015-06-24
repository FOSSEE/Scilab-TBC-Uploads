// Example 7.2.4  page 7.12

clc;
clear;

n1=3.6;  //refractive index
n=1;    //refractive index of air
F=0.68; //transmission factor
Pin=30/100; //percent power supplied

eta =(n1*(n1+1)^2)^-1;     //computing eta
P=Pin*eta;      //computing optical power emitted
eta=eta*100;
P=P*1000;
Pt=P*Pin;       //computing internal power

printf("\neta external is %.1f percent.\nOptical power emitted is %.1f mW.\nInternal power is %.2f mW.",eta,P,Pt);
printf("\nNote - Printing error in the book they have printed 1.5 instead of 1.3 as the answer of eta.");

//Printing error in the book they have printed 1.5 instead of 1.3 as the answer of eta

