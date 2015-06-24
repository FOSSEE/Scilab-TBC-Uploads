//Ex19_30 Pg-998
clc

// question in the textbook is wrong7 
disp("LHS : (A + B + C)(A + B + C) ")
disp("        = AA + AB + AC + BA + BB +BC + CA + CB + CC")
//using distributive law
disp("        = A + AB + AC + BA + B +BC + CA + CB + C")
//using law 6
disp("        = A + AB + AC +BC + CB + C")
//using law 5
disp("        = A(B + 1) + AC + B + C(B + 1)")
//taking A common from A+AB and C from CB+C
disp("        = A + AC + B + C")
//using law 3
disp("        = A + B + C(A + 1)")
//taking common C from AC+C
disp("        = A + B + C")
//using law 3
disp("Therefore (A'' + B + C)(A'' + B'' + C) = A'' + C")
