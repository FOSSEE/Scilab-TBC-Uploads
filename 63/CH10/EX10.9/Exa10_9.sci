//Determine the cutoff wavelength, the guide wavelength and the char. wave impediance of a circular waveguide

vc = 3e+10;
f = 10e+9;
r = 2;
kr = 1.84;
L = 120*%pi;

lambda = vc/f;
lambda0 = (2*%pi*r)/kr;
lambdap = lambda/sqrt(1 - (lambda/lambda0)^2);
Z0 = L/sqrt(1 - (lambda/lambda0)^2);

disp(lambda0 , 'Cutoff wavelength (in cm)')
disp(lambdap , 'Guide wavelength (in cm)')
disp(Z0, 'Char. wave impediance (in ohms)')