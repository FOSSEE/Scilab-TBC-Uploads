clc();
clear;
//To calculate the density of the structure
M=200;                               //atomic weight 
a=5;                                //lattice parameter
Na=6.022*(10^26);
rho=(2*M)/(Na*(a*10^-10)^3)         //density of the structure
printf("The density of the bcc structure is %f kg/m^3",rho);
