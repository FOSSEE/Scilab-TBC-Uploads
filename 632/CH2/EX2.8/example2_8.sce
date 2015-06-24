//clc()
//kG = (6.7 * 10^-4) * (( G * (ds + dt) / ds)^0.8) / ((ds^0.4)*(dG^0.2))
//kG - lbmol/(h ft^2 atm), G - lb/(ft^2 h), ds, dG, dt - feet
//kG1 - kmol/(m^2 h atm), G1 - kg/(m^2 h), ds1, dG1, dt1 - m
G = 0.2048;//G1 * lb/(ft^2 h)
d = 3.2808;//d1 * ft
ds = d;
dt = d;
dG = d;
kG = 4.885;//kG1 (lbmol/(h ft^2 atm) = 4.885 * kmol/(m^2 h atm))
C = (6.7 * 10^-4) * (( G * d / ds)^0.8) / ((ds^0.4)*(dG^0.2))* kG;
disp(C,"Co-efficient = ")
// this is the constant for the equation
// the equation thus becomes,
// kG1 = C * (( G1 * (ds1 + dt1) / ds1)^0.8) / ((ds1^0.4)*(dG1^0.2))
