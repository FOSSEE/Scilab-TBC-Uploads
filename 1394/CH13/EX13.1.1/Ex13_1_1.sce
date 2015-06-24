

clc
//Intialization of variables
xD = 0.90 // Distillate mole fraction
xB = 0.15// Reboiler mole fraction
xF = 0.50 //Feed mole fraction
F = 10 // mol/sec
dg = 3.1*10^-3 // g/cc
dl = 0.65 // g/cc
C = 0.11 // m/sec
//Calculations
D = ((xF*F)-(xB*F))/(xD-xB)
B = ((xF*F)-(xD*F))/(xB-xD)
L = 3.5*D
G = L+D
L1 = L+F
G1 = G
f = (L1/G1)*(sqrt(dg/dl)) // flow parameter
vG = C*(sqrt((dl-dg)/dg))//vapor velocity in m/sec
c = (22.4*10^-3)*340/373
d = sqrt(4*G1*c/(vG*%pi))//m
//Results
printf("The column diameter is %.1f m",d)

//Calculation mistake in textbook


