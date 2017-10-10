function cubicspline(X,Y)
   n = length(X);
    //c(1) = 0;
    //a = zeros(n-1,n-1);
    for(i = 2:n-1)
        c(i-1) = (6/(X(i+1)-X(i-1)))*((Y(i+1)-Y(i))/(X(i+1)-X(i)) - (Y(i)-Y(i-1))/                 (X(i)-X(i-1)));
    end
    for(i = 2:n-1)
            a(i-1,i-1) = (X(i)-X(i-1))/(X(i+1)-X(i-1));
            a(i-1,i)   = 2;
            a(i-1,i+1) = (X(i+1)-X(i))/(X(i+1)-X(i-1));
            
    end
[m,n] = size(a);

b = a(:,2:n-1);    //For the case of natural splines, double derivative is zero at the first and last of data points. So removing the first and last columns since these are the only non-zero terms in the respective columns.

//[r2 c2] = size(b);

//disp(c)
//disp(b)
x  = inv(b)*c;

//disp(x)
x1(1,1) = 0;
x1(n,1) = 0;
x1(2:n-1,1) = x(:,1);

printf('The values of second derivatives at the data points are :\n')
disp(x1)

x = poly(0,'x');

for(i = 2:n)
    f(i-1) = [Y(i-1)*(X(i)-x)/(X(i)-X(i-1)) + Y(i)*(x-X(i-1))/(X(i)-X(i-1))] + x1(i-1)/6*[(X(i)-x)^3/(X(i)-X(i-1))-(X(i)-X(i-1))*(X(i)-x)] + x1(i)/6*[(x-X(i-1))^3/(X(i)-X(i-1))-(X(i)-X(i-1))*(x-X(i-1))];
end

printf('\nThe expressions for the cubic splines are \n')
disp(f)

for(i = 1:n-1)
    p = X(i):0.01:X(i+1);
    q = horner(f(i),p);
    plot(p,q)
end
plot(X,Y,'ks')
xlabel('x')
ylabel('y')

endfunction