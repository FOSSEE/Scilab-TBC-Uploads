//Eg-4.6
//pg-151

clear
clc

// Method of Sucessive substitution

clear ;
close ;
clc ;
//Coefficients of polynomial in increasing order of power of x
A = [0 0 1];

//when G(x)=x^2
x01 = 0.5;
x02 = 1.5;
t(1) = x01;
fx = poly(A,'x','c');
printf('\nFor G(x) = x^2\n\n')
printf('  x0        itr        xnew\n')
for(i = 1:5)
    xnew(i) = horner(fx,t(i))
    t(i+1) = xnew(i);
    printf('%f     %d        %f\n',x01,i,xnew(i))
end
p(1) = x02;
for(i = 1:5)
    xnew(i) = horner(fx,p(i))
    p(i+1) = xnew(i);
    printf('%f     %d        %f\n',x02,i,xnew(i))
end


//when g(x)=x^1/2

deff('z=f(x)','z=x^(1/2)');
printf('\nFor G(x) = x^0.5\n\n')
printf('  x0        itr        xnew\n')
for i=1:5
    xnew(i) = feval(t(i),f);
    t(i+1) = xnew(i);
    printf('%f     %d        %f\n',x01,i,xnew(i))
end
for i=1:5
    xnew(i) = feval(p(i),f);
    p(i+1) = xnew(i);
    printf('%f     %d        %f\n',x02,i,xnew(i))
end



