//Problem 3.04:

//initializing the variables:
T1 = 75; // in °F
Pa = 14.7; // in psia
MWair = 29;
T2 = 60; // in °F
T3 = 20;// in °C
P = 1.2; // in atm
MWgas = 29;
Rf = 10.73; // in ft^3.psi/lbmol.°R
Rc = 82.06; // in cm^3.atm/lbmol.K

n = 1; // in lbmol
//calculation:
p1 = Pa*MWair/((T1 + 460)*Rf)
V = n*Rf*(T2 + 460)/Pa
p2 = P*MWgas/(Rc*(T3 + 273))

printf("\n\nResult\n\n")
printf("\n density of air is %.4f lb/ft^3",p1)
printf("\n the volume is %.0f ft^3",V)
printf("\n density of gas is %.5f g/cm^3",p2)