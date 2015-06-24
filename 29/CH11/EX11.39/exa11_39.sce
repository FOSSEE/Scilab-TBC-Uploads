//caption:determine_transfer_matrix
//example 11_39
//page 513
s=%s
A=[0 1;-6 -5]
B=[0;1]
C=[2 1]
D=0;
[r c]=size(A);//size of matrix A
p=s*eye(r,c)-A;//s*I-A where I is identity matrix
r=inv(p)//inverse of sI-A
G=C*r*B+D//transfer matrix
disp(G,"transfer matrix=")
