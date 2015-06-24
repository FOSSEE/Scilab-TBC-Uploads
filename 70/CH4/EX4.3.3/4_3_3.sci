//page 214
clear;
close;
clc;
A=[2 -1 0 0;-1 2 -1 0;0 -1 2 -1;0 0 -1 2];
disp(A,'A=');
[m,n]=size(A)
a=A(1,:);
c=[];
for l=1:4
    B=A([1:0,2:4],[1:l-1,l+1:4]);
    c1l=(-1)^(1+l)*det(B);
    c=[c;c1l];
end
d=a*c;
disp(d)