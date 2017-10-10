//Eg-4.9
//pg-157

clear
clc


// Newton Raphson Method

A = [-150-(%pi*0.12*298)-%pi*0.12*0.8*5.67*10^(-8)*298^4 %pi*0.12*25 0 0 %pi*.12*.8*5.67*10^(-8)];
x1 = 298;
fx = poly(A,'x','c');
B = [%pi*0.12*25 0 0 %pi*.12*4*.8*5.67*10^(-8)];
diffx = poly(B,'x','c');
disp(fx)
disp(diffx)
iter=1;

eps=10^(-10);
errorcheck=1;
abserr = 1;

while (abserr > eps)
    printf('\niteration number %i\n',iter);
    xnew1 = x1 - horner(fx,x1)/horner(diffx,x1);
    printf('xnew1 = %f \n',xnew1);
    abserr = abs((xnew1 - x1)/(x1)*100);
    x1 = xnew1;
    iter = iter + 1;
end

printf('\nThe solution obtained after %d iterations is %f\n',iter-1,xnew1)