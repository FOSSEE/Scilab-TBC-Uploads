//caption:determine_transfer_function
//example 11_38
//page 513
s=%s
A=[-5 1;-6 0]
B=[1;2]
C=[2 1]
D=0;
[r c]=size(A);//size of matrix A
p=s*eye(r,c)-A;//s*I-A where I is identity matrix
r=inv(p)//inverse of sI-A
G=C*r*B+D//transfer matrix
disp(G,"transfer matrix=")
