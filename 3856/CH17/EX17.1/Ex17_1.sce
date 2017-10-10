//Calculate the bond length of Carbon monoxide

//Example 17.1

clc;

clear;

h=6.626*10^-34; //Planck's constant in J s

delv=1.15*10^11; //Frequency difference between two microwave spectrum of carbon monoxide

I=h/(4*(%pi^2)*delv); //Intensity of emerging light in kg m^2

m1=12.01; //Mass of the Carbon atom in amu

m2=16.00; //Mass of the Oxygen atom in amu

r1=(((I)*(m1+m2))/((m1*m2)*(1.661*10^-27)))^(1/2); //Bond length of CO in m

r=r1*10^10; //Bond length of CO in A

printf("Bond length of Carbon mono Oxide = %.2f A ",r);
