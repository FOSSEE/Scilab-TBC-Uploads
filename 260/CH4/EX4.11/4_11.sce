//Eg-4.11
//pg-163

clear
clc

// Secant Method

clear ;
close ;
clc ;

deff('[z]=f(x)','z=1.55*x^(-0.5)-7.2*x+8.1*x^2-4*x^3-1.3');
iter=1;
eps=10^(-10);
x1=0.5;
x2=1;
imax=20;

Abserr=100;
while Abserr>eps&iter<imax
    //printf('iteration number %i\n',iter);
    xnew1=x2-feval(x2,f)*(x2-x1)/(feval(x2,f)-feval(x1,f));
    //printf('xnew1 = %f \n',xnew1);
    Abserr=abs(xnew1-x1)/abs(xnew1);
    x1=x2;
    x2=xnew1;
   iter=iter+1;
end

printf('The result of %f has been found after %d iterations',x2,iter-1)