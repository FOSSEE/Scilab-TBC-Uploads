

clc
// Given that
Hf=-1.16*10^9  //  Latent heat of fusion in J/m^3 
Y=0.132  //   Surface energy in J/m^2
Tm=1064+273  // Melting point of gold in K  
T=1064+273-230  //  230 is supercoiling value in K 
a=0.413*10^-9  //  Unit Cell edge length in m 
n = 4 // Number of atoms in a FCC unit cell
printf("Example 8.1\n");

printf("\n Part A");

r=-2*Y*Tm/(Hf*(Tm-T));

printf("\n Critical Radius is : %.2f nm\n",r/10^-9);

G=16*%pi*Y^3*Tm^2/(3*Hf^2*(Tm-T)^2);

printf(" Activation free energy is : %.2e J\n",G) // Answer in book is 9.64e-19 J. It is due to approximation at intermediate stage

printf("\n Part B")
u_c=4*%pi*r^3/(3*a^3)

printf("\n Unit cells per paricle are : %d",u_c);
tot_uc = n*int(u_c) // Total no. of atoms per critical nucleus
printf("\n Total no. of atoms per critical nucleus are : %d\n",tot_uc);

