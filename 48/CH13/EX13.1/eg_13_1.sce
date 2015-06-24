clc;
clear;
disp("By following the general procedure for fault detection in the text book  Page n.o 478");
disp("According to 3 & 4 steps of general procedure all the inputs are taken as 0 and the output is checked]");
disp("X:      0  0  0");
disp("       A  B  A  B");
disp("Z:      1  0  1");
disp("By following the step 5");
disp("X:      1  0");
disp("       B  B  A");
disp("Z:      0  0");
disp("Accoring to step 6");
disp("X:      1  0  0  1  0  0");
disp("       A  D  D  D  C  D  D");
disp("Z:      0  3  3  1  2  3");
disp("Step 7 & 8")
disp("X:      1  1  0");
disp("       D  C  A  B");
disp("Z:      1  1  1");
disp("Whole checking experiment")
disp("X:    0  0  0  1  0  1  0  0  1  0  0  1  1  0");
disp("     A  B  A  B  B  A  D  D  D  C  D  D  C  A  B");
disp("Z:     1  0  1  0  0  0  3  3  1  2  3  1  1  1");