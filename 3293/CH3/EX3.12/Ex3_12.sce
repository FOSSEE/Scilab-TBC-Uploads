//page 81
//Example 3.12
clc;
clear;
close;
x = round(rand(1,2) * 10);
x1 = x(1);
x2 = x(2);
T = [x1+x2 x1];
disp(x1,'x1 = ');
disp(x2,'x2 = ');
printf('T(%d,%d) = ',x1,x2);
disp(T);
disp('If, T(x1,x2) = 0, then');
disp('x1 = x2 = 0');
disp('So, T is non-singular');
disp('z1,z2 are two scalars in F');
z1 = round(rand() * 10);
z2 = round(rand() * 10);
disp(z1,'z1 = ');
disp(z2,'z2 = ');
x1 = z2;
x2 = z1 - z2;
disp(x1,'So, x1 = ');
disp(x2,'x2 = ');
disp('Hence, T is onto.');
Tinv = [z2 z1-z2]; 
disp(Tinv,'inverse(T) = ');
//end
