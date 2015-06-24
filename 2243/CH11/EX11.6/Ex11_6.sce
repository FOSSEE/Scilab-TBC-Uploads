clc();
clear;
//Given :
ni1 = 2.5*10^19; // per m^3 for Ge
ni2 = 1.5*10^16; // per m^3 for Si
mu_e1 = 0.38; // mobility of free electrons for Ge in m^2/Vs
mu_h1 = 0.18; //mobility of holes for Ge in m^2/Vs
mu_e2 = 0.13;//mobility of free electrons for Si in m^2/Vs
mu_h2 = 0.05;//mobility of holes for Si in m^2/Vs
e = 1.6*10^-19; // charge of an electron in C
sigma1 = ni1*e*(mu_e1 + mu_h1); // intrinsic conductivity in mho m^-1 for Ge
sigma2 = ni2*e*(mu_e2 + mu_h2);// intrinsic conductivity in mho m^-1 for Si
rho1 = 1/sigma1; //intrinsic resistivity in ohm m for Ge
rho2 = 1/sigma2;//intrinsic resistivity in ohm m for Si
printf("Resistivity of Ge %.3f ohm m \n",rho1);
printf("Resistivity of Si %.3f x 10^3 ohm m",rho2*10^-3);
