//Problem 14.13:

//initializing the variables:
T = 150; // in deg C
P = 1.5; // in atm
nH2O = 0.9
nC2H4 = 0.1
DG0150c = 2375 // in cal/gmol
FH0298k = -10000; // in cal/gmol
R = 1.987;
v = 1-1-1

//calculation:
Tk = T + 273
K = %e^(-1*DG0150c/(R*Tk))
//yC2H4 = (1-e)/(10-e)
//yH2O = (9-e)/(10-e)
//yC2H5OH = (e)/(10-e)
//KP = yC2H5OH/(yC2H4*yH2O)
//K = e*(10-e)/(2*(1 - e)*(9 - e))
// 1.12*e^2 - 11.2*e + 1.08 = 0
e = 0.0966
yC2H4 = (1-e)/(10-e)
yH2O = (9-e)/(10-e)
yC2H5OH = (e)/(10-e)

printf("\n\nResult\n\n")
printf("\n the equilibrium product mole fraction composition of C2H4 is %.4f, of H2O is %.4f and of C2H5OH is %.3f",yC2H4,yH2O,yC2H5OH)