//Example No. 9_04
//Lagrange Interpolation- Second order
//Pg No. 282
clear ; close ; clc ;

X = [ 1 2 3 4 5]
Fx = [ 1 1.4142 1.7321 2 2.2361];
X = X(2:4)
Fx = Fx(2:4)
x0 = 2.5 
x = poly(0,'x')
p = 0 
for i = 1:3
    L(i) = 1
    for j = 1:3
        if j == i then
            continue ;
        else
            L(i) = L(i)*( x - X(j) )/( X(i) - X(j) ) ;
        end
    end
    p = p + Fx(i)*L(i) 
end
L0 = horner(L(1),2.5) ;
L1 = horner(L(2),2.5) ;
L2 = horner(L(3),2.5) ;
p2_5 = horner(p,2.5) ;
printf('For x = 2.5 we have,\n L0(2.5) = %f \n L1(2.5) = %f \n L2(2.5) = %f \n p(2.5) = %f \n',L0,L1,L2,p2_5)

err = sqrt(2.5) - p2_5 ;
printf('The error is %f',err);

