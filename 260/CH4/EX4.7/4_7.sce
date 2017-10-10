//Eg-4.7
//pg-154



// Method of Sucessive substitution

clear ;
close ;
clc ;
//Coefficients of polynomial in increasing order of power of x

x1=0.5;
deff('[z]=f(x)','z=0.3*exp(x)');
errorcheck=1;
iter=1;
eps=10^-8;
imax=30;

while errorcheck==1&iter<imax
xnew=feval(x1,f);
 printf('xnew  = %f\n',xnew);

abserr=abs(xnew-x1)/abs(xnew);
x1=xnew;
if abserr<=eps then
    errorcheck=2;
end
iter=iter+1;
end

disp("The solution is")
disp(x1)
disp("no of iterations required")
disp(iter)

printf('\nSince the number of decimals used for calculations and that displayed are different the number of iterations is different from the book.')