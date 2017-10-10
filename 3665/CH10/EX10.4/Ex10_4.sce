clc//
//
//

//Variable declaration
N=3*10^28;     //number of atoms(per m^3)
alphae=10^-40;    
epsilon0=8.854*10^-12;

//Calculation
epsilon_r=1+(N*alphae/epsilon0);   //dielectric constant of material

//Result
printf("\n dielectric constant of material is %0.3f ",epsilon_r)
