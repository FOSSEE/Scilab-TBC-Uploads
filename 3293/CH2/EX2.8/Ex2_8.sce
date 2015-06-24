//page 37
//Example 2.8
clear;
clc;
close;
a1 = [1 2 0 3 0];
a2 =[0 0 1 4 0];
a3 = [0 0 0 0 1];
disp(a1,'a1 = ');
disp(a2,'a2 = ');
disp(a3,'a3 = ');
disp('By theorem 3, vector a is in subspace W of F^5 spanned by a1, a2, a3');
disp('if and only if there exist scalars c1, c2, c3 such that');
disp('a= c1a1 + c2a2 + c3a3');
disp('So, a = (c1,2*c1,c2,3c1+4c2,c3)');
c1 = -3;
c2 = 1;
c3 = 2;
a = c1*a1 + c2*a2 + c3*a3;
disp(c1,'c1 = ');
disp(c2,'c2 = ');
disp(c3,'c3 = ');
disp(a,'Therefore, a = ');
disp('This shows, a is in W');
disp('And (2,4,6,7,8) is not in W as there is no value of c1 c2 c3 that satisfies the equation');
//end
