//To Find the Concentrations of all the species in the reaction

//Example 11.3

clc;

clear;

Ka=4.2*10^-7;//Acid Dissociation Constant for Carbonic Acid

Sol=1.1*10^-5;//Solubility of CO2 in equilibrium with water

a1=1;b1=Ka;c1=-Ka*Sol;//Coefficients a,b and c of the quadratic equation to find the concentration of H+

d1=(b1^2-(4*a1*c1));//Discriminant of the Quadratic Equation

x=(-b1+sqrt(d1))/(2*a1);//Concentration of H+

Ka2=4.8*10^-11;//Second Dissociation Constant for H2CO3

y=Ka2;//Concentration of CO3 2- ions

Kw=1*10^-14;//Disscociation Constant of Water

z=Kw/x;//Concentration of OH- ions (The answer vary due to round off error)

printf("At Equilibrium the concentrations are as follows:");

printf("\n [H+]=%.1f*10^-6 M",x*10^6);

printf("\n [OH-]=%.1f*10^-9 M",z*10^9);

printf("\n [H2CO3]=%.1f*10^-5 M",Sol*10^5);

printf("\n [HCO3-]=%.1f*10^-6 M",x*10^6);

printf("\n [CO3 2-]=%.1f*10^-11 M",y*10^11);
