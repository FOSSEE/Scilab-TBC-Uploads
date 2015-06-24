//Determine the minimum receivable signal in a radar receiver

F = 10^(9/10);
k = 1.38e-23;
T0 = 290;
dF = 1.5e+6;

Pmin = k*T0*dF*(F-1);

disp(Pmin, 'Minimum receivable signal in a radar receiver is (in W)') 