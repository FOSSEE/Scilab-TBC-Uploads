// Scilab code Ex3.2: Pg 80 (2008)
clc; clear;
A = 400e-06;              // Cross-sectional area of plate, m^2
I = 50e-06;              // Source current, A
t = 3;                   // Flow time of current, s
// Since electric current is the rate of flow of charge i.e I = Q/t, solving for Q 
Q = I*t;                 // Amount of charge on plates, C
//Solving for density of the electric field between the plates
D = Q/A;                    // Electric field density, C/m^2
printf("\The charge on the plates = %3d micro-coloumb", Q/1e-06);
printf("\nThe density of the electric field between the plates = %5.3f C/m-square", D);

// Result
// The charge on the plates = 150 micro-coloumb
// The density of the electric field between the plates =0.375 C/m-square
