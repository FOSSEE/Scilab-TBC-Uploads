//Example No. 9_06
//Newton Interpolation - Second order
//Pg No. 288
clear ; close ; clc ;

i = [ 0 1 2 3]
X = 1:4 
Fx = [ 0 0.3010 0.4771 0.6021] 
X = 1:3
Fx = Fx(1:3)
x = poly(0,'x');
A = Fx'
for i = 2:3
    for j = 1:4-i
        A(j,i) = ( A(j+1,i-1)-A(j,i-1) )/(X(j+i-1)-X(j)) ;
    end
end
printf('The coefficients of the polynomial are,\n a0 = %.4G \n a1 = %.4G \n a2 = %.4G \n',A(1,1),A(1,2),A(1,3))
p = A(1,1);
for i = 2:3
    p = p +A(1,i)* prod(x*ones(1,i-1) - X(1:i-1));
end
disp(string(p))
p2_5 = horner(p,2.5)
printf('p(2.5) = %.4G \n',p2_5)