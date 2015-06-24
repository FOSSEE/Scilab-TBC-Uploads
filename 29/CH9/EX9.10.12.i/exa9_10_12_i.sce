//caption:obtain_zero_input_response
//example 9.10.12_(i)
//page 395
s=%s;
syms t
A=[0 1;-2 -1]
B=[0 1]'
x0=[1 0]'
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
x=ip*x0
disp(x,"zero input response of the system,x(t)=");
