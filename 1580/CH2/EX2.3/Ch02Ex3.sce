// Scilab Code Ex2.3 :  Page-2.23 (2004)
clc;clear;
a = 0.27e-9; // Nearest neighbour distance, m
c = 0.494e-9;   // Height of unit cell, m
V = 3*(sqrt(3))*(a^2)*c/2; //  Volume of unit cell of HCP , in metre cube
N = 6.023e+26; // Avodagro number , per k-mol 
M = 65.37;  //  Atomic weight of zinc, 
rho = 6*M/(V*N);    //  Density of zinc, kg per metre cube
printf("\nVolume  = %4.3e metre cube", V);
printf("\nDensity of zinc = %d kg per metre cube", rho);

// Result 
//  Volume  = 9.356e-29 metre cube
//  Density of zinc = 6960 kg per metre cube
