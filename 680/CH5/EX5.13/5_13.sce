//Problem 5.13:

//initializing the variables:
tm = 50.85; // total lbmol from problem 5.12
T = 500+460;
P = 1; // in atm
R = 0.7302

//calculation:
//Noting that 100 lb of fuel was used as a basis, the total lbmol of flue gas produced per pound of oil burned is
n = tm/100
//the total volume of flue gas
V = n*R*T/P

printf("\n\nResult\n\n")
printf("\n the total volume of flue gas = %.2f ft3/lboil",V)