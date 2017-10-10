//Eg-4.10
//pg-161

clear
clc


// Secant Method

A=[-6 5 -3 2];
x1=0.5;
x2=0.7;
eps=10^(-10);
fx=poly(A,'x','c');
iter=1;
Abserr=100;
while Abserr>eps
    printf('iteration number %i\n',iter);
    xnew1=x2-horner(fx,x2)*(x2-x1)/(horner(fx,x2)-horner(fx,x1));
    printf('xnew1 = %f \n',xnew1);
    Abserr = abs(horner(fx,xnew1) - horner(fx,x1))/abs(horner(fx,xnew1));
    x1=x2;
    x2=xnew1;
   iter=iter+1;
end

disp("result was found in iterations")
disp(iter-1)

