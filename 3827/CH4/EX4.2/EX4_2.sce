//EX4_2:Show that a′c + b′c′ + ab = a′b′ + bc + ac′.

//clears the screen
clc

//clears already existing variables
clear

disp('LHS = a′c(b + b′) + b′c′(a + a′) + ab(c + c′)');
disp('= a′bc + a′b′c + ab′c′ + a′b′c′ + abc + abc′');
disp('= m3 + m1 + m4 + m0 + m7 + m6');
disp('RHS = a′b′(c + c′) + bc(a + a′) + ac′(b + b′)');
disp('= a′b′c + a′b′c + abc + a′bc + abc′ + ab′c′');
disp('= m1 + m0 + m7 + m3 + m6 + m4');
