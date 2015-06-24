clear ;
clc;
// Example 21.2
printf('Example 21.2\n\n');
//page no. 624
// Solution 

//Given
id = 3 ;// Internal diameter of tube-[cm]
Vf = 0.001 ;// Volume flow rate of water in tube-[cubic meter/s]
rho = 1000 ;// Assumed density of water-[kg/cubic meter] 

rad = id/2 ;// Radius of tube -[ cm]
a = 3.14*rad^2 ;// Area of flow of tube -[squqre centimeter]
v = Vf*(100)^2/a ;// Velocity of water in tube - [m/s]
KE = v^2/2 ;// Specific(mass=1kg) kinetic energy of water in tube -[J/kg]

printf('Specific kinetic energy of water in tube is %.2f J/kg .\n ',KE);