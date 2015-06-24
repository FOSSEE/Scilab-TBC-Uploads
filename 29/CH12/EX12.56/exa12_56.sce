//caption:obtain_state_transistion_matrix
//example 12_56
//page 586
s=%s;
syms t
A=[0 1;0 -3]
[r c]=size(A);//size of matrix A
p=s*eye(r,c)-A;//s*I-A where I is identity matrix
q=det(p)//determinant of sI-A
r=inv(p)//inverse of sI-A
//for calculating state transistion matrix
ip=[0 0;0 0]
i=1;
j=1;
for i=1:2
  for j=1:2
    if(i==2 & j==1)
      else
    ip(i,j)=ilaplace(r(i,j),s,t);
    j=j+1;
    end
  end
  i=i+1;
end
r(2,1)=0
disp(ip,"state transistion matrix,ip(t)=");