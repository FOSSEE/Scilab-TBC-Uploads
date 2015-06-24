//determine z transform of x(n)={2,4,5,7,3}
clc;
clear;
x={2,4,5,7,3};
z=poly(0,"z");
X=0;
for n=1:1:5
    X=X+x(n).*(z^(-1*(n-2-1)));//n-3 came because 0th podition of x is the position of 3
end
disp(X,"Z tranform=");