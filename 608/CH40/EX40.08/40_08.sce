//Problem 40.08: A concentric cable has a core diameter of 20 mm and a sheath inside diameter of 60 mm. The permittivity of the dielectric is 3.2. Using three equipotential surfaces within the dielectric, determine the capacitance of the cable per metre length by the method of curvilinear squares. Draw the field plot for the cable.

//initializing the variables:
e0 = 8.85E-12; 
er = 3.2;
di = 0.06; // in m
d0 = 0.020; // in m

//calculation:
//core radius, a
a = d0/2
//internal sheath radius,
b = di/2
//capacitance
C = 2*%pi*e0*er/(log(b/a))

printf("\n\n Result \n\n")
printf("\n capacitance per m of length is %.2E F",C)