//Determine the peak transmitted pulse power

dF = 5e+5;
lambda = 3.75e-2;
F = 3;
D = 1;
S = 5;

Pt = (dF*lambda^2*(F-1))/(256*D^4*S);

disp(Pt, 'Peak transmitted pulse power is (in W)')