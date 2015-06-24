//Determine the frequency
a = 3;
m = 1;
vc = 3e+10;
L = 120*%pi;
Z0 = 500;

lambda0 = (2*a)/m;
lambda = lambda0*sqrt(1 - (L/Z0)^2);
f = vc/lambda;

disp(f, 'Frequency is (in Hz)')