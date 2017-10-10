//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 3.1.4
//windows XP
//Scilab version-5.5.1
clc;
clear;
//given

//case 1
n1=1.48;//refractive index of the core
n2=1.46;//refractive index of the cladding

//case 2
n3=1.495;//refractive of the index of core
n4=1.402;//refractive index of the cladding

//case 1
b=n1*n1;
c=n2*n2;
v=b-c;
NA=sqrt(v);//numerical aperture for case 1
mprintf("\n numerical aperture for case 1=%.4f",NA);

//case 2
e=n3*n3;
r=n4*n4;
t=e-r;
NA1=sqrt(t);//numerical aperture for case 2
mprintf("\n numerical aperture for case 2=%.4f",NA1);


