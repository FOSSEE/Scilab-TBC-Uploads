//page 286
//Example 8.14
clc;
clear;
close;
v = [-10 2 8];
u = [3 12 -1]
disp(v,'v = ');
disp(u,'v = ');
disp('Orthogonal projection of v1 on subspace W spanned by v2 is given by:');
a = ((u*v')')/(u(1)^2 + u(2)^2 + u(3)^2) * u;
disp(a);
disp('Orthogonal projection of R^3 on W is the linear transformation E given by:');
printf('(x1,x2,x3) -> (3*x1 + 12*x2 - x3)/%d * (3 12 -1)',(u(1)^2 + u(2)^2 + u(3)^2));
disp('Rank(E) = 1');
disp('Nullity(E)  = 2');
//end
