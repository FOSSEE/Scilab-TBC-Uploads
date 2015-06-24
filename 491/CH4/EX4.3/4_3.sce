q = 0.2 ; // Uniform load intensity in K/ft
P = 14 ; // Concentrated load in k
Ra = 11 ; // Reaction at A from wquation of equilibrium
Rb = 9 ; // Reaction at B from wquation of equilibrium
V = 11 - 14 - (0.2*15) ; // shear force in k
disp("k",V,"Shear force at section D")
M = (11*15)-(14*6)-(0.2*15*7.5) ; // Bending moment in K-ft
disp("k-ft",M,"Bending moment at section D")
V1 = -9+(0.2*15); // Shear firce from alternative method in k
M1 = (9*9)-(0.2*7.5*15);  // Bending moment from alternative method in k-ft
