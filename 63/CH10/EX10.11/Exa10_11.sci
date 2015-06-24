//Determine the voltage attenuation provided by a 25 cm length of waveguide

a = 1;
m = 1;
vc = 3e+10;
f = 1e+9;
A = 25
L0 = 2;

lambda0 = (2*a)/m;
lambda = vc/f;

lambdaDB = 54.5*(A/L0);

disp(lambdaDB, 'Volatage attenuation is (in dB)')