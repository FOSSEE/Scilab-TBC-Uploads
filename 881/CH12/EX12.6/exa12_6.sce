clc;
//Example 12.6
//Page No 524


//solution

f=150*10^6;
c=3*10^8;
z0=50;
zl=150;

disp("The Physical length of the transformer depends on the wavelength of the signal. Substituting into equation 12-3 yields, ");

l=(c/f);

disp('m',l,'l = ');

l=l/4;

disp('m',l,'l = ');

disp("The characteristic impedance of the 0.5m transformer is determined from the equation 12-47 ");

Z0=sqrt(z0*zl);

disp('Ohm',Z0,"Z0 = ")
