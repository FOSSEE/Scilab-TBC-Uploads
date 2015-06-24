//page 9
//Example 1.6
clear;
close;
clc;
a=[-1 %i;-%i 3;1 2];
disp(a,'a = ');
disp('Applying row transformations:');
disp('R1 = R1+R3 and R2 = R2 + i *R3');
a(1,:) = a(1,:) +a(3,:);
a(2,:) = a(2,:) + %i * a(3,:);
disp(a,'a = ');
disp('R1 = R1 * (1/2+i)');
a(1,:) = 1/(2 + %i) * a(1,:);
disp(a,'a = ');
disp('R2 = R2-R1*(3+2i) and R3 = R3 - 2 *R1');
a(2,:) = round(a(2,:) - (3 + 2 * %i) * a(1,:));
a(3,:) = round(a(3,:) - 2 * a(1,:));
disp(a,'a = ');
disp('Thus the system of equations is:');
disp('x1 + 2*x2 = 0','-i*x1 + 3*x2 = 0','-x1+i*x2 = 0');
disp('It has only trivial solution x1 = x2 = 0');
//end
