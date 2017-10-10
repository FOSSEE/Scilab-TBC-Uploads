//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 5.1.1
//windows XP
//Scilab version-5.5.1
clc;
clear;
//given

n1=1.4675;//Refractive index of the core for silica fiber
n2=1.4622;//Refractive index of the cladding for silica fiber

x=n1*n1;
y=n2*n2;

NA=sqrt(x-y);

mprintf("Numerical aperture of singlemode fiber =%.3f",NA);
