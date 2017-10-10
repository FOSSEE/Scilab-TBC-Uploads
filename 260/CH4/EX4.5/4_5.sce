//Eg-4.5
//pg-149

clear
clc


//False Position Method

clear ;
close ;
clc ;
//Coefficients of polynomial in increasing order of power of x
A = [-3.1622777 -1.2649111 -0.1264911 0 0 100];
x1 = 0 ;
x2 = 2 ;
fx = poly(A,'x','c');
printf('\n\nThe given equation can be modified and written in the following form after substituting the values of given constants\n')
disp(fx)
i = 0;
eps = 1;

while(eps > 10^(-6))
    i = i+1;
    //printf('\n\nIteration No. %i \n',i);
    fx1 = horner(fx,x1);
    fx2 = horner(fx,x2);
    xnew = (x1*fx2 - x2*fx1)/(fx2-fx1); 
    fxnew = horner(fx,xnew);
    //printf('xnew = %f \nfxnew = %f',xnew,fxnew);
    
    if fx1*fxnew < 0 then
        x2 = xnew ;
    else
        x1 = xnew ;
    end
    eps = abs(fxnew);
end

printf('\n\nThe result obtained after %d iterations is x = %f\n',i,xnew)