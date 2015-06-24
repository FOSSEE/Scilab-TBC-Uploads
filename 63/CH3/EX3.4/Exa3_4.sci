//Determine antenna current when percent of modulation changes to 0.8

It = 8.93;
Ic = 8;

m = sqrt(2*((It/Ic)^2 - 1));

m1 = .8;
It1 = Ic*sqrt(1 + (m1^2/2))

disp(It1, 'Antenna current when percent of modulation changes to 0.8 is (in A)')

