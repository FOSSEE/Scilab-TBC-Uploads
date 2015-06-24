//Example No. 9_08
//Newton-Gregory forward difference formula
//Pg No. 297
clear ; close ; clc ;

X = [ 10 20 30 40 50]
Fx = [ 0.1736 0.3420 0.5000 0.6428 0.7660]
x = poly(0,'x');
A = [X' Fx'];
for i = 3:6
     A(1:7-i,i) = diff(A(1:8-i,i-1))
end
disp(A)
x0 = X(1);
h = X(2) - X(1) ;
x1 = 25
s = (x1 - x0)/h ;
p(1) = Fx(1); 
for j = 1:4
    p(j+1) = p(j) + prod(s*ones(1,j)-[0:j-1])*A(1,j+2)/factorial(j)
end
printf('p1(s) = %.4G \n p2(s) = %.4G \n p3(s) = %.4G \n p4(s) = %.4G \n',p(2),p(3),p(4),p(5)) 
printf(' Thus sin(%d) = %.4G \n ',x1,p(5)) 

