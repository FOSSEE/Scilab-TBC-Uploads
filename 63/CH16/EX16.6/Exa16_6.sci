//Determine the maximum range of a deep-space radar

lambda1 = 30/2.5;
lambda = lambda1/100;
Pt = 2.5e+7;
D = 64;
S = 1;
dF = 5e+3;
F = 1.1;

Rmax = 48*sqrt(sqrt(((Pt*D^4*S)/(dF*lambda^2*(F-1)))));

disp(Rmax, 'Maximum range of a deep-space radar is (in Km)') 