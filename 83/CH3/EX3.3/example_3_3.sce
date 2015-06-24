//Chapter 3
//Example 3.3
//page 88
//To claculate the capacitance to neutral and charging current of a double circuit three phase transmission line
clear;clc;

//After deriving the equation for Cn from the textbook and starting calculation from Eq 3.36 onwards

r=0.865*10^(-2); frequency=50; v=110e3;
h=6; d=8; j=8; //Referring to fig given in the textbook

i=((j/2)^2+((d-h)/2)^2)^(1/2);
f=(j^2+h^2)^(1/2);
g=(7^2+4^2)^(1/2);


Cn=4*%pi*8.85*10^(-12)/(log((((i^2)*(g^2)*j*h)/((r^3)*(f^2*d)))^(1/3)));

Cn=Cn*1000 ; //Cn is in per m.to convert it to per km,we multiply by 1000
WCn=2*%pi*frequency*Cn;

Icp=(v/sqrt(3))*WCn;

Icc=Icp/2;

printf("\nTotal capacitance to neutral for two conductors in parallel = %0.6f uF/km \n\n",Cn*10^(6));
printf("Charging current/phase = %0.3f A/km \n\n",Icp);
printf("Charging current/conductor = %0.4f A/km \n\n",Icc);



