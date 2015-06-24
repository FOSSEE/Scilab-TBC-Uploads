//Determine the greatest number of half-waves of electric intensity which it will be possible to establish between the two walls and also determine the guide wavelength for this mode of propagation
vc = 3e+10;
f = 10e+9;
d = 6;
m1 = 1;
m2 = 2;
m3 = 3;
m4 = 4;

lambda = vc/f;

lambda01 = (2*d)/m1;
lambda02 = (2*d)/m2;
lambda03 = (2*d)/m3;
lambda04 = (2*d)/m4;

lambdap = lambda/sqrt(1 - (lambda/lambda03)^2);

disp(lambda, 'Wave which will propagate in the WG (in cm)');
disp(lambda01, 'This mode will propagate (in cm)')
disp(lambda02, 'This mode will propagate (in cm)')
disp(lambda03, 'This mode will propagate (in cm)')
disp(lambda04, 'This mode will not propagate (in cm)')
disp(lambdap, 'Guide wavelength for this mode of propagation (in cm)')