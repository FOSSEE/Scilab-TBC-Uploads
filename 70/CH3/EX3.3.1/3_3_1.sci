//page 165
clear;
close;
clc;
A=rand(4,4);
disp(A,'A=');
P=A*inv(A'*A)*A';
disp('P=A*inv(A''*A)*A');
disp(P,'Projection of a  invertible 4x4 matrix on to the whole space is:');
disp('Its identity matrix.')
//end