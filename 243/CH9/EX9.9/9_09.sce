//Example No. 9_09
//Newton Backward difference formula
//Pg No. 299
clear ;close ;clc ;

X = [ 10 20 30 40 50]
Fx = [ 0.1736 0.3420 0.5000 0.6428 0.7660]
x = poly(0,'x');
A = [X' Fx'];
for i = 3:6
     A(i-1:5,i) = diff(A(i-2:5,i-1))
end
disp(A);
xn = X(5);
h = 10 ;
xuk = 25;
s = (xuk - xn)/h ;
disp(s,'s = ');
p(1) = Fx(5)
for j = 1:4
    p(j+1) = p(j) + prod(s*ones(1,j)-[0:j-1])*A(5,j+2)/factorial(j)
end
printf('\n\n p1(s) = %.4G \n p2(s) = %.4G \n p3(s) = %.4G \n p4(s) = %.4G \n',p(2),p(3),p(4),p(5)) 
printf(' Thus sin(%d) = %.4G \n ',xuk,p(5)) 
