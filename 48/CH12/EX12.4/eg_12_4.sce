clc;
clear;
disp("we know that a partition pi on the set of states of a Sequential machine M is said to be closed if,for every two states Si and Sj which are in the same block of pi and any Ith input successor of Si and Sj are also in the same group");
disp("Based on the above definition we can make seven closed partitions as below");
disp("**Parition 1**");
disp("{A,B,C,D,E,F,G,H}")
disp("**Parition 1**");
disp("{(ABCD)(EFGH)}");
disp("**Parition 2**");
disp("{(ADEH)(BCFG)}")
disp("**Parition 3**");
disp("{(AD)(BCFG)(EH)}");
disp("**Parition 4**");
disp("{(ADEH)(BC)(FG)}")
disp("**Parition 5**");
disp("{(AD)(BC)(EH)(FG)}")
disp("**Parition 6**");
disp("{(ABCCDEFGH)}");
disp("By assigning values from 000 to 111 to all the states from A to H and obtaining the functions for Y1,Y2,Y3 and z will result in this equations");
disp("Y1=x^y1^");
disp("Y2=x^y2+xy2^");
disp("Y3=xy2+x^y1^y2y3^+y3^y2^y3+y1y2y3+x^y1y2^y3^");
disp("z=y1^y2^y3");