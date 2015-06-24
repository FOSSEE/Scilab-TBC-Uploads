// Scilab Code Ex2.19 Wavelength of first line of Balmer series: Pg:58 (2008)s
n1 = 2;    // Ground level of Balmer line in H-atom
n2 = 4;    // Third level of Balmer line in H-atom
R = 1.097e+07;    // Rydberg constant, per metre
L2 = 1/((1/n1^2 - 1/n2^2)*R);    // Wavelength of second line of Balmer series, m
n2 = 3;    // Second level of Balmer line in H-atom
L1 = 1/((1/n1^2 - 1/n2^2)*R);    // Wavelength of first line of Balmer series, m
L_ratio = L1/L2;    // Wavelength ratio of first and second line of Balmer series, m
L2 = 4861;    // Given wavelength of second line of Balmer series, angstrom
L1 = L2*L_ratio;    // Wavelength of first line of Balmer series, angstrom
printf("\nThe wavelength of first line of Balmer series = %4d angstrom", L1);
// Result 
// The wavelength of first line of Balmer series = 6562 angstrom 