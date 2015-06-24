// Scilab Code Ex2.22 Wavelength of second number of Balmer series of hydrogen: Pg:60 (2008)
n1 = 2;    // Principle quantum number of second orbit in H-atom
n2 = 3;    // Principle quantum number of third orbit in H-atom
R = 1.097e+07;    // Rydberg constant, per metre
L1 = 1/((1/n1^2 - 1/n2^2)*R);    // Wavelength of first Balmer line, m
n2 = 4;    // Principle quantum number of third orbit in H-atom 
L2 = 1/((1/n1^2 - 1/n2^2)*R);    // Wavelength of second Balmer line, m
L_ratio = L2/L1;    // Wavelength ratio of second and first line of Balmer series
L1 = 6563e-010;    // Given wavelength of first line of Balmer series, m
L2 = L_ratio*L1;    // Wavelength of second Balmer line, m
printf("\nThe wavelength of second Balmer line = %4e m", L2);
// Result 
// The wavelength of second Balmer line = 4.861481e-007 m 