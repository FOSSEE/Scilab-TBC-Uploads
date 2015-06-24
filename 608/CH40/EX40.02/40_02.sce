//Problem 40.02: A field plot for a cross-section of a concentric cable is shown in Figure 40.10. If the relative permeability of the dielectric is 3.4, determine the capacitance of a 100 m length of the cable.

//initializing the variables:
e0 = 8.85E-12; 
er = 3.4;
l = 100; // in m

//calculation: 
//From Figure 40.10
m = 13; // number of parallel squares measured along each equipotential
n = 4; // the number of series squares measured along each line of force
C = e0*er*l*m/n

printf("\n\n Result \n\n")
printf("\n capacitance is %.3E Farad.",C)