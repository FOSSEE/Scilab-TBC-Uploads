//Application of LU factorisation method for solving the system of equation
//In this case A(1,1)=0 so to avoid the division by 0 we will have to interchange the rows.

clear;
close();
clc;
format('v',5);
A = {2,2,-2,4;0,1,5,3;1,5,7,-10;-1,1,6,-5];
for l=1:4
  L(l,l)=1;
end
for i=1:4
  for j=1:4
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
b=[4;-6;14;0];
c=L\b;
x=U\c;
disp(x,'Solution of equations :')