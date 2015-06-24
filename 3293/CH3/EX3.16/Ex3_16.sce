//page 92
//Example 3.16
clc;
clear;
close;
disp('T is a linear operator on R^2 defined as T(x1,x2) = (x1,0)');
disp('So, the matrix T in standard ordered basis B = {e1,e2} is ');
T = [1 0 ;0 0];
disp(T,'[T]B = ');
disp('Let B'' is the ordered basis for R^2 consisting of vectors:');
E1 = [1 1];
E2 = [2 1];
disp(E1,'E1 = ');
disp(E2,'E2 = ');
P = [E1;E2]'
disp(P,'So, matrix P = ');
Pinv = inv(P);
disp(Pinv,'P inverse = ');
T1 = Pinv*T*P;
disp(T1,'So, matrix T in ordered basis B'' is [T]B'' = ');
//end
