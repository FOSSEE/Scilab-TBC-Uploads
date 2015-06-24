//Ex19_28 Pg-998
clc

disp("AB + A(B + C) + B(B + C)  = AB + AB + AC + BB + BC")
//using distributive law
disp("                          = AB + AC + B +BC      ")
//using law 6
disp("                          = AB + AC + B(1 + C)  ")
//taking common B from B + BC 
disp("                          = AB + AC + B")
//using law 7 
disp("                          = B(A + 1) + AC")
//taking common B from AB + B
disp("                          = B + AC")
//using law 7
disp("Therefore AB + A(B + C) + B(B + C) = B + AC")
