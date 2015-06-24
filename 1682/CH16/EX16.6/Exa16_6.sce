//Exa 16.6
clc;
clear;
close;
//given data :
disp("Given the following LP model :")
disp("minimize Z = 2*X1 + 3*X2");
disp("subject to");
disp("X1+X2 >= 6");
disp("7*X1+X2 >= 14");
disp("X1,X2 >= 0");
disp("Standard Form : The standard form of the above model is as follows :");
disp("minimize Z = 2*X1 + 3*X2");
disp("subject to");
disp("X1+X2-S1 >= 6");
disp("7*X1+X2-S2 >= 14");
disp("X1,X2,S1,S2 >= 0");
disp("S1, S2 are surplus variables which are introduced to balance the constraints.");
disp("Canonical Form : The Canonical form of the above model is as follows :");
disp("minimize Z = 2*X1 + 3*X2 + M1*R1 + M2*R2");
disp("subject to");
disp("X1+X2-S1+R1 >= 6");
disp("7*X1+X2-S2+R2 >= 14");
disp("X1,X2,S1,S2,R1,R2 >= 0");
disp("R1, R2 are artificial variables which are introduced to have basic variables in each of the constraints.");

disp("The initial simplex table of the above problem is shownin table below : ");
disp("CBi               Cj          2          3          0          0          M          M");
disp("           Basic Variable    X1         X2         S1         S2         R1        R2          Solution          Ratio");
disp(" M               R1           1          1         -1          0          1         0             6                6");
disp(" M               R2           7          1          0         -1          0         1            14                2**");
disp("                 Zj          8M         2M         -M         -M          M         M           20M");
disp("               Cj-Zj       2-8*M       3-2*M        M          M          0         0");
disp("* key column       ** key row");
disp("The value at the intersection of the keyrow and key column is called the key element.");