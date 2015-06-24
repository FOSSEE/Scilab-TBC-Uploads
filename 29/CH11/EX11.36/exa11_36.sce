//caption:state_transition_matrix
//example 11_36
//page 511
s=%s;
syms t
A=[1 4;-2 -5]
[r c]=size(A);//size of matrix A
p=s*eye(r,c)-A;//s*I-A where I is identity matrix
q=det(p)//determinant of sI-A
r=inv(p)//inverse of sI-A
//for calculating state transistion matrix
ip=[0 0;0 0]
i=1;j=1;
for i=1:2
  for j=1:2
    ip(i,j)=ilaplace(r(i,j),s,t);
    j=j+1;
  end
  i=i+1;
end
disp(ip,"state transistion matrix,ip(t)=");