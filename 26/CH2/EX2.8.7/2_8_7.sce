disp('the given matrix is:')
A=[2 -3 -4;-8 8 6;6 -7 -7]
disp(A,'A=')
disp('the given vector is:')
p=[6;-10;11]
disp(p,'p=')
disp('combining A and p')
b=[A p]
disp(b)
disp('performing row operations')
b(2,:)=b(2,:)-(b(2,1)/b(1,1))*b(1,:)
b(3,:)=b(3,:)-(b(3,1)/b(1,1))*b(1,:)
disp(b)
b(3,:)=b(3,:)-(b(3,2)/b(2,2))*b(2,:)
disp(b)
if(b(3,3)==0 & b(3,4)==0)
    disp('p lies in column space of A')
  else
    disp('p does not lie in column space of A')
 end