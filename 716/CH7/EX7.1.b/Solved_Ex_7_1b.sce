//determine z transform of x(n)={6,4,5,3}
clc;
clear;
x={6,4,5,3};
z=poly(0,"z");
X=0;
for n=1:1:4
    X=X+x(n).*(z^(-1*(n-3-1)));//n-3 came because actual 0th position of x is the position of 3 here
end
disp(X,"Z tranform=");