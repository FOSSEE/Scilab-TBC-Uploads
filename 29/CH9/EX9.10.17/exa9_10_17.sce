//caption:determine_transfer_matrix
//example 9.10.17
//page 407
s=%s
A=[-3 1;0 -1]
B=[1;1]
C=[1 1]
D=0;
[r c]=size(A);//size of matrix A
p=s*eye(r,c)-A;//s*I-A where I is identity matrix
r=inv(p)//inverse of sI-A
G=C*r*B//transfer matrix
disp(G,"transfer matrix=")
