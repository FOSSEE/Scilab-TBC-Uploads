//caption:determine_transfer_matrix
//example 9.10.16
//page 406
clc;
s=%s
A=[1 -2;4 -5]
B=[2;1]
C=[1 1]
[r c]=size(A);//size of matrix A
p=s*eye(r,c)-A;//s*I-A where I is identity matrix
r=inv(p)//inverse of sI-A
G=C*r*B//transfer matrix
disp(G,"transfer matrix=")
