//page 89
//Example 3.14
clc;
clear;
close;
disp('T is a linear operator on F^2 defined as:');
disp('T(x1,x2) = (x1,0)');
disp('B = {e1,e2} is a standard ordered basis for F^2,then');
x1 = 1;
x2 = 0;
Te1 = [x1 0];
x1 = 0;
x2 = 1;
Te2 = [x1 0];
disp(Te1,'So, Te1 = T(1,0) = ');
disp(Te2,'So, Te2 = T(0,1) = ');
disp('so,matrix T in ordered basis B is: ');
T = [Te1; Te2];
disp(T,'T = ');
//end
