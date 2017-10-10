clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 1.1   Page 5 ')//Example 1.1
// Find Wall Heat Loss - Problem of Pure Conduction Unidimensional Heat

L=.15;    //[m] - Thickness of conducting wall
delT = 1400 - 1150;  //[K] - Temperature Difference across the Wall
A=.5*1.2; //[m^2] - Cross sectional Area of wall = H*W
k=1.7;    //[W/m.k] - Thermal Conductivity of Wall Material

//Using Fourier's Law eq 1.2
Q = k*delT/L;    //[W/m^2] - Heat Flux

q = A*Q;          //[W] - Rate of Heat Transfer  

printf("\n \n Heat Loss through the Wall = %.2f W",q);
//END



