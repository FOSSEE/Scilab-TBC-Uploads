//clc()
A = 13.8587;
B = 2911.32;
C = 56.56;
T1 = 325;//K
//Pressure at normal condition = 101.3kPa
P2 = 101.3;//kPa
//Antoine equation - lnP = A - B / (T - C)
lnP = A - (B / (T1 - C));
P1 = exp(lnP);
disp("kPa",P1,"(a)Vapour pressure of n-heptane at 325K = ")
T2 = B/(A - log(P2)) + C;
disp("K",T2,"(b)Normal boiling point of n-heptane = ")