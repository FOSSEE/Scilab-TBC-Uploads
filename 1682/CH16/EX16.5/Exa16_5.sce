//Exa 16.3
clc;
clear;
close;
//given data :
disp("Given the following LP model :")
disp("maximize Z = 6*X1 + 8*X2");
disp("subject to");
disp("5*X1+10*X2 <= 60");
disp("4*X1+4*X2 <= 40");
disp("X1,X2 >= 0");
disp("The canonical form of the above LP problem is :");
disp("maximize Z = 6*X1 + 8*X2 + 0*S1 + 0*S2");
disp("subject to");
disp("5*X1+10*X2+S1 = 60");
disp("4*X1+4*X2+S2 = 40");
disp("X1,X2,S1,S2 >= 0");
disp("S1, S2 are slack variables.");
disp("The initial simplex table of the above problem is shownin table below : ");
disp("CBi               Cj          6          8          0          0");
disp("           Basic Variable    X1         X2         S1         S2     Solution     Ratio");
disp(" 0               S1           5         10          1          0        60        60/10=6**");
disp(" 0               S2           4          4          0          1        40        40/4=10");
disp("                 Zj           0          0          0          0         0");
disp("               Cj-Zj          6          8*         0          0");
disp("* key column       ** key row");
disp("The value at the intersection of the keyrow and key column is called the key element.");