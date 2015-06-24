//Caption :Symmetric Products 
//Example:1.6.2-To Find the product of transpose(R)and R.
//page 51
clear;
close;
clc;
R=[1 2];
disp(R,'R=');
Rt=R';
disp(Rt,'Transpose of the given matrix is :')
disp(R*Rt,'The product of R & transpose(R)is :')
disp(Rt*R,'The product of transpose(R)& R is :' )
disp('Rt*R and R*Rt are not likely to be equal even if m==n.')
//end