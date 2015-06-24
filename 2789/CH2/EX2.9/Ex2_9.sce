clear;
clc;

//page no. 51

v = 15;// ft/sec^2
d = 5;// ft
p = integrate('-62.4*(v+32.2)/32.2','z',0,-5);
printf('p = %d psf',p);
