//To calculate the density of diamond
a = 0.356;     //cube edge of diamond, nm
aw = 12.01;      //atomic weight of carbon in kg
N = 6.023*10^26;     //avagadro's number
a_m = a*10^-9;      //cube edge of diamond, m
n = 8/(a_m^3);      //number of atoms/m^3
M = aw/N;      //mass of 1 carbon atom, kg
rho =  M*n;
printf("number of atoms per m^3 is");
disp(n);
printf("density of diamong is %d kg/m^3",rho);

//answer for density given in the book is wrong
