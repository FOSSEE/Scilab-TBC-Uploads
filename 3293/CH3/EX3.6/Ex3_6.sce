//page 70
//Example 3.6
clc;
clear;
close;
a1 = [1 2];
a2 = [3 4];
disp(a1,'a1 = ');
disp(a2,'a2 = ');
disp('a1 and a2 are linearly independent and hence form a basis for R^2');
disp('According to theorem 1, there is a linear transformation from R^2 to R^3 with the transformation functions as:');
Ta1 = [3 2 1];
Ta2 = [6 5 4];
disp(Ta1,'Ta1 = ');
disp(Ta2,'Ta2 = ');
disp('Now, we find scalars c1 and c2 for that we know T(c1a1 + c2a2) = c1(Ta1) + c2(Ta2))');
disp('if(1,0) = c1(1,2) + c2(3,4), then ');
c = inv([a1;a2]') * [1;0];
c1 = c(1,1);
c2 = c(2,1);
disp(c1,'c1 = ');
disp(c2,'c2 = ');
disp('The transformation function T(1,0) will be:');
T = c1*Ta1 + c2*Ta2;
disp(T,'T(1,0) = ');
//end
