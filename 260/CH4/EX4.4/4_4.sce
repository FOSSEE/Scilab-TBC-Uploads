//Eg-4.4
//pg-147

clear
clc


//False Position Method

clear ;
close ;
clc ;
//Coefficients of polynomial in increasing order of power of x
A = [-2 1 -2 1];
x1 = 1 ;
x2 = 3 ;
fx = poly(A,'x','c');
for i = 1:20
    printf('\n\nIteration No. %i \n',i);
    fx1 = horner(fx,x1);
    fx2 = horner(fx,x2);
    x0 = x1 - fx1*(x2-x1)/(fx2-fx1) 
    printf('xnew = %f \n',x0);
    fx0 = horner(fx,x0);
    if fx1*fx0 < 0 then
        x2 = x0 ;
    else
        x1 = x0 ;
    end    
end

printf('\n\nPlease note that the author has considered only 5 decimal places, but here we have taken 6 decimal places, so a minor difference in the answer may occur')