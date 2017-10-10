//Example number 8.2, Page number 170

clc;clear;
close;

//Variable declaration
chi=-0.5*10**-5;       //magnetic susceptibility
H=9.9*10**4;        //magnetic field intensity(amp/m)
mew0=4*%pi*10**-7;
//Calculation
I=chi*H;      //intensity of magnetisation(amp/m)
B=mew0*H*(1+chi);       //magnetic flux density(wb/m**2)
//Result
printf("intensity of magnetisation is %.3f amp/m",I)
printf("\n magnetic flux density is %.3f Wb/m^2",B)
