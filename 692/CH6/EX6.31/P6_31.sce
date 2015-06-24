//EXAMPLE 6.31
//PROGRAM REQUIRES MAXIMA SCILAB TOOLBOX
//USE Z-TRANSFORM TO EVALUATE CONVOLUTION OF TWO SEQUENCES:
clc;
clear;
syms n z;
x = [3 -2 4];
h = [4 2 -1];

for n=-1:1
    X(n+2) = x(n+2)*(z^-n);
end
disp(X','X = ');

for n=0:2
    H(n+1) = h(n+1)*(z^-n);
end
disp(H','H = ');


for i=1:3
    U(i)=0;
    for j=1:3
        U(i)=U(i)+X(i)*H(j);
    end
end
Y=0;
for i=1:3;
    Y = Y + U(i);
end
disp(Y,'Y = ');

disp('y = [12 -2 9 10 -4]');

