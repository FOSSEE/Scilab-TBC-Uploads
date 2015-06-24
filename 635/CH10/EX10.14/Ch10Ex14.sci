// Scilab Code Ex 10.14 Hall coefficient calculation of sodium based on free electron model: Page-353 (2010)
e = 1.6D-19;    // Electronic charge, C
a = 4.28D-10;    // lattice parameter (side) of the unit cell of sodium crystal, m
N = 2;        // Number of atoms per unit cell in bcc structure of sodium 
n = N/a^3;    // Number of electrons per unit volume for the sodium crystal, per metre cube
RH = -1/(n*e);    // Hall coefficient of sodium, metre cube per coulomb
disp(RH,"The Hall coefficient of sodium , in metre cube per coulomb, is : ");
// Result
// The Hall coefficient of sodium , in metre cube per coulomb, is :
//     -2.450D-10