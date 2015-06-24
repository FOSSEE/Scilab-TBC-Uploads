// Scilab Code Ex 10.9 Electrical Conductivity of Cu: Page-345 (2010)
e = 1.6D-19;    // Electronic charge,  C
N = 6.023D+23;    // Avogardro's number
d = 8920;       // Density of Copper, kg per metre cube
A = 63.5;        // Atomic weight of copper,  g/mole
I = 10;        // Current through uniform copper wir,  A
D = 16D-4;        //Diameter of circular cross-section of copper wire, m
R = D/2;           // Radius of circular cross-section of copper wire, m
n = d*N/63.5*1D+3;    // The number of electrons per unit volume in copper, per metre cube
J = I/(%pi*R^2);    // Current density of electrons in copper, ampere per metre square
vd = J/(n*e);        // Drift velocity of electrons in copper, metre per second
disp(J,"The current density of electrons in copper, in ampere per metre square, is : ");
disp(vd,"The drift velocity of electrons in copper, in metre per second, is : ");
//Result
//The current density of electrons in copper, in ampere per metre square, is :
//        4973592
// The drift velocity of electrons in copper, in metre per second, is :
//         0.0003674
 