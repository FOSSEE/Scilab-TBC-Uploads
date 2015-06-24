// Scilab Code Ex13.11: Page-652 (2011)
clc;clear;
mu = 1.5;....// Optical index of refraction of NaCl crystal
K = 5.6;....// Static dielectric constant of NaCl crystal
P_IP = (1-((mu^2-1)*(K+2))/((mu^2+2)*(K-1)))*100;
printf("\nThe percentage of ionic polarizibility in NaCl crystal = %4.1f percent ", P_IP);

// Result
// The percentage of ionic polarizibility in NaCl crystal = 51.4 percent    


