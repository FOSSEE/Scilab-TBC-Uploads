//determine z transform of x(n)={0.5,-0.25,1}
clc;
clear;
x={0.5,-0.25,1};
z=poly(0,"z");
X=0;
for n=1:1:3
    X=X+x(n)*(z^(-1*(n-1)));
end
disp(X,"Z tranform=");