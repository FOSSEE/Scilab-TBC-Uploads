clc
A=[-3 6 9;1/6 1/2 1/3]
disp('first row of A displays the value of x')
disp('the second row of x displays the probability of corresponding to x')
disp('E(x)=')
c=A(1,1)*A(2,1)+A(1,2)*(2,2)+A(1,3)*A(2,3)
disp('E(x)^2=')
b=A(1,1)^2*A(2,1)+A(1,2)^2*(2,2)+A(1,3)^2*A(2,3)
disp('E(2*x+1)^2=E(4*x^2+4*x+1)'
4*b+4*c+1