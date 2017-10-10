clc;funcprot(0);//EXAMPLE 17.8
// Initialisation of Variables
psi1=10.5*10^6;..............//Modulus of elasticity of Glass in psi
psi2=0.4*10^6;..............//Modulus of elasticity of Nylon in psi
a1=0.3;.....................//area of glass in cm^3
a2=0.7;.....................//area of Nylon in cm^3
//Calculations
psi=psi1/psi2;..............//Fraction of elasticity
fo=a1/(a1+(a2*(1/psi)));..........//Fraction of applied force carried by Glass fiber 
disp(fo,"Fraction of applied force carried by Glass fiber :")
printf("      Almost all of the load is carried by the glass fibers.")
