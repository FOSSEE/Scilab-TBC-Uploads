//Problem 40.09: Two parallel wires, each of diameter 5 mm, are uniformly spaced in air at a distance of 50 mm between centres. Determine the capacitance of the line if the total length is 200 m.

//initializing the variables:
e0 = 8.85E-12; 
er = 1;
D = 0.05; // in m
d = 0.005; // in m
l = 200; // in m

//calculation:
//capacitance
C = %pi*e0*er/(log(D/(d/2)))
//capacitance of a 200 m length
C200 = C*l

printf("\n\n Result \n\n")
printf("\n capacitance of a 200 m length is %.2E F",C200)