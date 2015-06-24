//To calculate the resistivity
ni = 2.4*10^19;      //intrinsic carrier density, per m^3
mew_e = 0.39;      //electron mobility, m^2/Vs
mew_h = 0.19;      //hole mobility, m^2/Vs
e = 1.6*10^-19;
sigma_i = ni*e*(mew_e+mew_h);      //conductivity, ohm-1 m-1
rho = 1/sigma_i;      //resistivity, ohm m
printf("resistivity is %5.3f ohm m",rho);
