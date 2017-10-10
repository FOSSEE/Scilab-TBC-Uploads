// Example 2.5
//computation of the energy in jules of the impinging electron after the collision//
// Page no. 49

clc;
clear;
close;

//Given data
e=1.602*10^-19;


//Calculation for the Kinetic energy E1 gained by the electron//
E1=10*e;

//Calculation for the Kinetic energy E2 needed to be transferred fom the bombarded electron to the atom//
E2=3.07*e;//(7.73eV-4.66eV)=3.07eV

//Calculation for the Kinetic energy E of the electron after the collision//
E=E1-E2;


//Displaying the result in command window
printf('\n Kinetic energy E1 gained by the electron = %0.2f x 10^-19 J',E1*10^19);
printf('\n \n Kinetic energy E2 needed to be transferred fom the bombarded electron to the atom = %0.2f x 10^-19 J',E2*10^19);
printf('\n \n Kinetic energy E of the electron after the collision = %0.2f x 10^-19 J',E*10^19);





