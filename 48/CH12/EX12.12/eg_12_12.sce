clc;
clear;
//1 is equivalent to A ad 2 to B and so on.
p1=['A' 'D']; //pairs in partition t(1 and 4 represents that 1st and 4th state are in the same block);
p2=['C' 'E'];

q1=['A' 'E'];  //pairs in partition t^
q2=['B' 'D'];
q3=['C' 'F'];

disp("the following are the partitions of the machine M8");
disp("T");
disp('F',p2(2),p2(1),'B',p1);
disp("T^");
disp(q3,q2,q1);
disp("------");
disp("T");
disp('F',p2,'B',p1);
disp("T^");
disp(q3,[q1 q2]);
disp("------");