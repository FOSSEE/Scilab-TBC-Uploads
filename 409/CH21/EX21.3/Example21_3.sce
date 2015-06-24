clear ;
clc;
// Example 21.3
printf('Example 21.3\n\n');
//page no. 626
// Solution 

//Given
// Let water level in first reservoir be the reference plane
h = 40 ;// Difference of water-[ft]
g = 32.2 ;// acceleration due to gravity-[ft/square second]
PE=g*h/(32.2*778.2) ;//// Specific(mass=1kg) potential energy of water -[Btu/lbm]

printf('Specific potential energy of water is %.4f Btu/lbm .\n ',PE);