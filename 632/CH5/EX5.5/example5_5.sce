//clc()
B = -2.19 * 10^-4;//m^3/mol
C = -1.73 * 10^-8;//m^6/mol^2
P = 10;//bar
T = 500;//K
//virial equation is given as, Z = PV/RT = 1 + B/V + C/V^2
//V = (RT/P)*(1 + B/V + C/V^2)
// now by assuming different values for V on RHS and checking for corresponding V on LHS, we have to assume such value of V on RHS by which we get the same value for LHS V
//by trial and error we get,
V = 3.92 * 10^-3;//m^3
disp("m^3",V,"Molar volume of methanol = ")
