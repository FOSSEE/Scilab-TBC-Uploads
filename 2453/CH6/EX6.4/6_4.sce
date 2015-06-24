//To calculate the dielectric constant of material
N = 3*10^28;     //density, atoms/m^3
alpha_e = 10^-40;    //electronic polarizability, Farad-m^2
epsilon0 = 8.854*10^-12;
epsilon_r = 1+(N*alpha_e/epsilon0);       //dielectric constant of material
printf("dielectric constant of material is %5.3f",epsilon_r); 
