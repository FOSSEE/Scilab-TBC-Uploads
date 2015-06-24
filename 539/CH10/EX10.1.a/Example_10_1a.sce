//Computation of Critical Nuclear Radius

clear;
clc;

printf("\tExample 10.1\n");

printf("\n\tPart A");
Hf=-1.16*10^9;  // in J/m^3  latent heat of fusion
Y=0.132;  // in J/m^2  Surface energy
Tm=1064+273;  // in K  Melting point of gold
T=1064+273-230;  // in K  230 is supercooling value

r=-2*Y*Tm/(Hf*(Tm-T));

printf("\nCritical Radius is : %.2f nm\n",r/10^-9);

G=16*%pi*Y^3*Tm^2/(3*Hf^2*(Tm-T)^2);

printf("\nActivation free energy is : %.2e J\n",G);

//end