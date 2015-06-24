//To calculate the volume of the unit cell and density of Zinc
a = 0.27;      //nearest neighbour distance, nm
c = 0.494;     //height of unit cell, nm
N = 6.023*10^26;    //avagadro number, k/mol
M = 65.37;     //atomic weight, kg
a_m = a*10^-9;    //nearest neighbour distance, m
c_m = c*10^-9;     //height of unit cell, m
V = 3*sqrt(3)*(a_m^2)*c_m/2;      //volume of unit cell, m^3
//if rho is density then mass = V*rho
//V*rho = 6*M/N
rho = (6*M)/(N*V);      //density, kg/m^3
printf("Volume of the unit cell in m^3 is");
disp(V);
printf("density of Zinc is %d kg/m^3",rho);

//answer for density given in the book is wrong
