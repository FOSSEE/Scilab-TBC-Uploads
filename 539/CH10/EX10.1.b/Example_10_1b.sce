//Activation Free Energy

clear;
clc;

printf("\tExample 10.1\n");

Hf=-1.16*10^9;  // in J/m^3  latent heat of fusion
Y=0.132;  // in J/m^2  Surface energy
Tm=1064+273;  // in K  Melting point of gold
T=1064+273-230;  // in K  230 is supercooling value
r=-2*Y*Tm/(Hf*(Tm-T));

printf("\n\tPart B");
a=0.413*10^-9;  // in m  Unit Cell edge length

//unit cells per paticle
u_c=4*%pi*r^3/(3*a^3);

printf("\nUnit cells per paricle are : %d",u_c);
printf("\nIn FCC there are 4 atoms per unit cell.\n");

printf("\nTotal no. of atoms per critical nucleus are : %d\n",int(u_c)*4);

//End