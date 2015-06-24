//Example No. 9_07
//Newton Divided Difference Interpolation
//Pg No. 291
clear ; close ; clc ;

i = 0:4
X = 1:5
Fx = [ 0 7 26 63 124];
x = poly(0,'x');
A = [ i' X' Fx']
for i = 4:7
     for j = 1:8-i
        A(j,i) = ( A(j+1,i-1)-A(j,i-1) )/(X(j+i-3)-X(j)) ;
    end
end
disp(A)
p = A(1,3);
p1_5(1) = p ;
for i = 4:7
    p = p +A(1,i)* prod(x*ones(1,i-3) - X(1:i-3));
    p1_5(i-2) = horner(p,1.5);
end
printf('p0(1.5) = %f \n p1(1.5) = %f \n p2(1.5) = %f \n p3(1.5) = %f \n p4(1.5) = %f \n',p1_5(1),p1_5(2),p1_5(3),p1_5(4),p1_5(5));
disp(p1_5(5),'The function value at x = 1.5 is')
