//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 3.1.3
//windows XP
//Scilab version-5.1.1
clc;
clear;
//given

//case 1
n1=1.48;//refractive index of the core
n2=1.46;//refractive index of the cladding

alphac=asin(sqrt(1-(n2/n1)^2));
mprintf("\n The Critical propogation angle for case 1 = %.2f deg",alphac);
b=sin(alphac);
thetaa=asind(n1*b);//by snell's law

a=2*thetaa;//acceptance angle of the fiber
mprintf("\nThe acceptance angle for case 1 is = %.2f deg",a);

//case 2
n3=1.495;//refractive index of the core
n4=1.402;//refractive index of the cladding

alphac2=asin(sqrt(1-(n4/n3)^2));
mprintf("\n The critical propagation angle for case 1 = %.2f deg",alphac2);
b2=sin(alphac2);
thetaa2=asind(n3*b2);//by snell's law

a2=2*thetaa2;//acceptance angle of the fiber
mprintf("\nThe acceptance angle for case 2 is = %.2f deg",a2);
