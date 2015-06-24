//Problem 11.10:

//initializing the variables:
mdt = 2000; // in acfm
xCl = 0.13;
T1 = 80; // in deg F
xCCl4 = 0.95;
Tav = -70; // in deg F
U = 4; // in Btu/ft2.h.deg F
Cav = 0.125; // Btu/lb.deg F
Hv = 93.7; // Btu/lb(80 deg F)
p0 = 7.74; // mm of Hg T 0 deg F
p18 = 5.64; // mm of Hg T -18 deg F
p40 = 2.23; // mm of Hg T -40 deg F

//calculation:
//let
n = 100; // in lbmol
nCCl4 = xCl*n
nair = n - nCCl4
//for 95%
nCCl4 = (1 - xCCl4)*nCCl4
yCCl4 = nCCl4/(nair + nCCl4)
PCCl4 = yCCl4*760
mdtair = mdt*(1 - xCl)*60*14.7*29/((460 + T1)*10.73)
mdtCCl4 = mdt*xCl*60*14.7*154/((460 + T1)*10.73)
Qair = mdtair*0.24*(-18 - T1)
QCCl4 = mdtCCl4*Cav*(-18 - T1) + mdtCCl4*xCCl4*(-1*Hv)
Q = Qair + QCCl4
LMTD = [(T1 - Tav) - (-18 - Tav)]/(log(150/52))
A = abs(Q)/(U*LMTD)

printf("\n\nResult\n\n")
printf("\n the surface area required is %.0f ft^2",A)