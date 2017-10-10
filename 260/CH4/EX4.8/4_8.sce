//Eg-4.8
//pg-155

clear
clc


// Newton Raphson Method

A=[6 -5 1];
x1=0.2;
x2=4;
fx=poly(A,'x','c');
B=[-5 2];
diffx=poly(B,'x','c');
for i=1:6
    printf('\niteration number %i\n',i-1);
    xnew1=x1-horner(fx,x1)/horner(diffx,x1);
    xnew2=x2-horner(fx,x2)/horner(diffx,x2);
    printf('xnew1 = %f \nxnew2=%f\n',x1,x2);
    x1=xnew1;
    x2=xnew2;
end