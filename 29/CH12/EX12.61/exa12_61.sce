//caption:obtain_transfer_matrix
//example 12_61
//page 592
s=%s;
syms t
A=[-1 -1;3 -5]
B=[1 1]'
C=[1 2]
[r c]=size(A);//size of matrix A
p=s*eye(r,c)-A;//s*I-A where I is identity matrix
q=det(p)//determinant of sI-A
r=inv(p)//inverse of sI-A
G=C*r*B
disp(G,"transfer_matrix=")