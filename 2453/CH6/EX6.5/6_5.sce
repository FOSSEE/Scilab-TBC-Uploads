//To calculate the electronic polarizability
epsilon0 = 8.854*10^-12;
epsilon_r = 1.0000684;      //dielectric constant
N = 2.7*10^25;     //density, atoms/m^3
alpha_e = epsilon0*(epsilon_r-1)/N;        //electronic polarizability, Fm^2
printf("electronic polarizability in Fm^2 is");
disp(alpha_e);
