//page 54
//Example 2.20
clear;
clc;
close;
P = [-1 4 5; 0 2 -3; 0 0 8];
disp(P,'P = ');
disp(inv(P),'inverse(P) = ');
a1 = P(:,1);
a2 = P(:,2);
a3 = P(:,3);
disp('The vectors forming basis of F^3 are a1'', a2'', a3''');
disp(a1','a1'' = ');
disp(a2','a2'' = ');
disp(a3','a3'' = ');
disp('The coordinates x1'',x2'',x3'' of vector a = [x1,x2,x3] is given by inverse(P)*[x1; x2; x3]');
t = -10*a1 - 1/2*a2 - a3;
disp(t,'And, -10*a1'' - 1/2*a2'' - a3'' = ');
//end
