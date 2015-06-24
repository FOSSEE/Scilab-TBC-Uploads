//determine z transform of x(n)={3,2,5,7}
clc;
clear;
x={3,2,5,7};
z=poly(0,"z");
X=0;
for n=1:1:4
    X=X+x(n).*(z^(-1*(n-1)));
end
disp(X,"Z tranform=");