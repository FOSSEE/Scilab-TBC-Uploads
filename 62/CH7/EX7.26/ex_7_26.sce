clear;
clc;
close;
A=[2 1;0 2];
D=[2 0; 0 2];
N=[0 1;0 0];
disp(N^2,"N*N=");
p=D*N;
q=N*D;
if (p==q) then
    disp("D and N commute")
end