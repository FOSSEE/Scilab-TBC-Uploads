//EXAMPLE 6.30
//PROGRAM REQUIRES MAXIMA SCILAB TOOLBOX
//USE Z-TRANSFORM TO EVALUATE CONVOLUTION OF TWO SEQUENCES:
clc;
clear;
syms n z;
x = [-2  0 1 -1 3];
h = [1 2 0 -1 0];

for n=0:4
    X(n+1) = x(n+1)*z^(-n);
    H(n+1) = h(n+1)*z^(-n);
end
disp(X','X = ');
disp(H','H = ');

for i=1:5
    U(i)=0;
    for j=1:5
        U(i)=U(i)+X(i)*H(j);
    end
end
Y=0;
for i=1:5;
    Y = Y + U(i);
end
disp(Y,'Y = ');

disp('y = [-2 -4 1 3 1 5 1 -3]')
