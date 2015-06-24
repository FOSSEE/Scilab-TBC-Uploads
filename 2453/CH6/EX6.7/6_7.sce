//To calculate the electronic polarizability
N = 6.02*10^26;     //avagadro number
d = 2050;      //density, kg/m^3
AW = 32;       //atomic weight of sulphur
n = N*d/AW;    //number of atoms/m^3
epsilon_r = 3.75;    //relative dielectric constant
epsilon0 = 8.55*10^-12;
alpha_e = ((epsilon_r-1)/(epsilon_r+2))*3*epsilon0/n;     //electronic polarizability, Fm^2 
printf("electronic polarizability in Fm^2 is");
disp(alpha_e);
