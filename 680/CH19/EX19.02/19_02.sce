//Problem 19.02:

//initializing the variables:
T = 400; // in deg F
P = 3; // in atm
To = 70; // in deg F
Po = 1; // in atm
Cp = 6.986; // Btu/lbmol.degR
Cv = 5.000; // in Btu/lbmol.degR
A = 0.5; // in ft2
m = 100; // in lbf
R = 0.732; // in ft3.atm/lbmol.degR
R1 = 1.986; // in Btu/lbmol.degR

//calculation:
V = 1*R*(T + 460)/P
Veq = 1*R*(To + 460)/Po
dV = V - Veq
dU = 1*Cv*(T - To)
dS = 1*Cp*log((T + 460)/(To + 460)) + 1*R1*log(Po/P)
X = dU + Po*2.74*dV - (To+460)*dS
Peq = Po*14.7 + m/(A*144)
Veq1 = 1*10.73*(To + 460)/Peq

printf("\n\nResult\n\n")
printf("\n the exergy of the system is %.0f Btu and Veq = %.1f ft^3 ",X, Veq1)