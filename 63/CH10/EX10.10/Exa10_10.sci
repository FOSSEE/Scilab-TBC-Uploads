//Determine the ratio of the cross section of a circular waveguide to that of a rectangle

r = 1;
kr = 1.84;


lambda0 = (2*%pi*r)/kr;
a = (3.41*r)/2;
b = a/2;

Ac = %pi*(r)^2;
Ar = a*b;

R = Ac/Ar;

disp(R, 'Ratio of the cross section of a circular waveguide to that of a reactangle')