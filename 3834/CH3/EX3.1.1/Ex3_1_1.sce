//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 3.1.1
//windows 7
//Scilab version-6.0.0
clc;
clear;
//given

//case 1
n1=1.48;//refractive index of the core 
n2=1.46;//refractive index of the cladding

//case 2
n3=1.495;//refractive index of the core
n4=1.402;//refractive index of the cladding

//case 1
b=n2/n1;
thetac=asind(b);
mprintf("\n The critical incident angle for case 1 is=%.2f degrees",thetac);

//case 2
g=n4/n3;
mprintf("\n The ratio=%.2f",g);
thetac2=asind(g);
mprintf("\n The critical incident angle for case 2 is=%.2f degrees",thetac2);

