// Scilab Code Ex12.5 : Page-605 (2011)
clc; clear;
mu_o = 4*%pi*1e-07;....// Magnetic permeability of the free space, henery/m
mu_r = 600;
mu = mu_o*mu_r;     // Magnetic permeability of the medium, henery/m
n = 500;...// Turns in a wire
i = 0.3;....// Current flows through a ring,amp
r = 12e-02/2;....// Mean radius of a ring, m
B = mu_o*mu_r*n*i/(2*%pi*r);
printf("\nThe magnetic flux density = %2.1f weber/meter-square", B);
H = B/mu;   // Magnetic intensity, ampere-turns/m
printf("\nThe magnetic intensity = %5.1f ampere-turns/m", H);
// As B = mu_o*(I + H) => mu_o*I = B - mu_o*H
printf("\nThe percentage magnetic flux density due to electronic loop currents = %5.2f percent", (B - mu_o*H)/B*100);

// Result
// The magnetic flux density = 0.3 weber/meter-square
// The magnetic intensity = 397.9 ampere-turns/m
// The percentage magnetic flux density due to electronic loop currents = 99.83 percent 
