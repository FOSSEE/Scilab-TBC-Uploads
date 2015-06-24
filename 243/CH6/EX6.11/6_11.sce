//Example No. 6_11
//Fixed point method
//Pg No. 161
clear ; close ; clc ;

//Coefficients of polynomial in increasing order of power of x
A = [ -2  1  1 ];
B = [ 2 0 -1 ];
gx = poly(B,'x','c');
x(1) = 0 ;//initial guess x0 = 0
for i = 2:10
    x(i) = horner(gx,x(i-1));
    printf('\n x%i = %f\n',i-1,x(i))
    if (x(i)-x(i-1)) == 0 then
        printf('\n%f is root of the equation,since x%i - x%i = 0 \n',x(i),i-1,i-2)
        break
    end
end
//Changing initial guess x0 = -1
x(1) = -1 ;
for i = 2:10
    x(i) = horner(gx,x(i-1));
    printf('\nx%i = %f\n',i-1,x(i))
    if (x(i)-x(i-1)) == 0 then
        printf('\n %f is root of the equation,since x%i - x%i = 0',x(i),i-1,i-2)
        break
    end
end