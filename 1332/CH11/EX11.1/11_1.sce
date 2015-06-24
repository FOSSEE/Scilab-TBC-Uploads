//Example 11.1
//Eigenvalues and Eigenvectors
//Page no. 333
clc;clear;close;

A1=[0.6;0.2];A2=[-0.2;0.6];A3=[-0.6;-0.2];A4=[0.2;-0.6];
T=[1.1,-0.3;-0.3,1.9];
B1=T*A1;B2=T*A2;B3=T*A3;B4=T*A4;
disp(B4,B3,B2,B1,'The transformed vectors are :')
disp('These points lie on the ellipse:')
printf('     2      2\n(x-3y)+(3x+y)\n------ ------\n  16     4\n\n')
A5=[0;2/sqrt(10)];
disp('The vector (0,2/10^(1/2)) lies on the circle:')
printf(' 2   2\nx + y = 4\n        -\n        10\n\n')
B5=T*A5;
disp('Also lies on the same ellipse',B5)
printf('\n\nWe can see that there is a linear relationship between the first 4 vectors and their respective transformend vectors through the scalars known as eigenvectors and eigenvalues respectively')