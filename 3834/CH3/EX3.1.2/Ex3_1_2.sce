//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 7
//Scilab version- 6.0.0
//Example 3.1.2
clc;
clear;
//given

//case 1
n1=1.48;//Refractive index of the core for silica fiber
n2=1.46;//Refractive index of the cladding for silica fiber

//case 2
n3=1.495;//Refractive index of the core for plastic optical fiber
n4=1.402;//Refractive index of the cladding for plastic optical fiber

//case 1
alphac=asind(sqrt(1-(n2/n1)^2));
mprintf("\n The Critical propagation angle for case 1 = %.2f deg",alphac);

//case 2
alphac2=asind(sqrt(1-(n4/n3)^2));
mprintf("\n The Critical propagation angle for case 2 = %.2f deg",alphac2);
