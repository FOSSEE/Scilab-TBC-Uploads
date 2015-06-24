//Problem 14.11:

//initializing the variables:
P = 2; // in atm
T1 = 373; // in K
nA = 1;
nB = 2.5;
nC = 2;
T2 = 273; // in K
R = 1.987;
v = 1 - 2 -1;

//calculation:
n = nA + nB + nC
yA = nA/n
yB = nB/n
yC = nC/n
K = (yC/(yB*yA^2))*P^v
DG0273 = R*T2*log(K)

printf("\n\nResult\n\n")
printf("\n standard free energy change of this reaction is %.2f cal/gmol",DG0273)