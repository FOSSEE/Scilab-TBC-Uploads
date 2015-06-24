//Illustrates the decomposition of every matrix into product of lower //and upper triangular matrix if diagonal elements of any one is '1' //then L and U could uniquely be determined. 
clear;
close();
clc;
format('v',5);
A = {4,-2,2;4,-3,-2;2,3,-1];
L(1,1)=1;L(2,2)=1;L(3,3)=1;
for i=1:3
  for j=1:3
    s=0;
    if j>=i
      for k=1:i-1
        s=s+L(i,k)*U(k,j);
      end
      U(i,j)=A(i,j)-s;
    else
      for k=1:j-1
        s=s+L(i,k)*U(k,j);
      end
      L(i,j)=(A(i,j)-s)/U(j,j);
    end
  end
end
disp(L,'L =')
disp(U,'U =')