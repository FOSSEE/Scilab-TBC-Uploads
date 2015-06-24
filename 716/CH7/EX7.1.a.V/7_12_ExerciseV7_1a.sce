//determine z transform of x(n)={1,3,5,6}
clc;
clear;
x={1,3,5,6};
z=poly(0,"z");
X=0;
for n=1:1:4
    X=X+x(n).*(z^(-1*(n-1)));
end
disp(X,"Z tranform=");