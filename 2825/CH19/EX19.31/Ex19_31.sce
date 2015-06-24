//Ex19_31 Pg-999
clc

disp("LHS : (A+ C)(A'' + B) ")
disp("         = AA'' + AB + CA'' + BC") //using distributive law
disp("         = 0 + AB + CA'' + BC") //using law 8
disp("         = AB + (A + A'')BC + CA''") //using law 7
disp("         = AB + ABC + A''BC + CA''") 
//using distributive law
disp("         = AB + ABC + A''C(B + 1)") 
//taking common A'C from A'BC + CA'
disp("         = AB + ABC + A''C") //using law 3
disp("         = AB(C + 1)+ A''C") 
//taking common AB from AB + ABC
disp("         = AB + A''C") //using law 3
disp("Therefore (A+ C)(A'' + B) = AB + A''C")
