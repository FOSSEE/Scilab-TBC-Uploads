//Determine total radiated power

Pt = 10.125;
Pc = 9;

m1 = sqrt(2*((Pt/Pc) - 1));

m2 = .40;
mt = sqrt(m1^2 + m2^2);

Pt1 = Pc*(1+(mt^2/2));

disp(Pt1, 'Total radiated power is (in kW)')

