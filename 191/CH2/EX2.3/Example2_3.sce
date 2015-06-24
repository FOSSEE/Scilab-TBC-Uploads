//Applying LU factorization method for solving the system of equation

clear;
close();
clc;
format('v',5);
A = {4,-2,2;4,-3,-2;2,3,-1];
for l=1:3
  L(l,l)=1;
end
for i=1:3
  for j=1:3
    s=0;
    if j>=i
      for k=1:i-1
        s=s+L(i,k)*U(k,j);
      end
      //disp(s,'sum :');
      U(i,j)=A(i,j)-s;
    else
      //s=0;
      for k=1:j-1
        s=s+L(i,k)*U(k,j);
      end
      L(i,j)=(A(i,j)-s)/U(j,j);
    end
  end
end
b=[6;-8;5];
c=L\b;
x=U\c;
disp(x,'Solution of equations :')