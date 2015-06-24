//Determine the maximum range of a radar system

P1 = 5e+5;
A0 = 5;
S = 20;
lambda = 0.03;
Pmin = 1e-13;

Rmax = sqrt(sqrt((P1*A0^2*S)/(4*%pi*lambda^2*Pmin)));
Rmax1 = Rmax/1000;

disp(Rmax1, 'Maximum range of a radar system is (in Km)')