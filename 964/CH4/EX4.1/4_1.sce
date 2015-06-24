clc;
clear;
function y=f(x)
    y=-0.1*x^4-0.15*x^3-0.5*x^2-0.25*x+1.2;
endfunction
xi=0;
xf=1;
h=xf-xi;
fi=f(xi);//function value at xi
ffa=f(xf);//actual function value at xf

//for n=0, i.e, zero order approximation
ff=fi;
Et(1)=ffa-ff;//truncation error at x=1
disp(fi,"The value of f at x=0 :")
disp(ff,"The value of f at x=1 due to zero order approximation :")
disp(Et(1),"Truncation error :")
disp("----------------------------------------------")

//for n=1, i.e, first order approximation
deff('y=f1(x)','y=derivative(f,x,order=4)')
f1i=f1(xi);//value of first derivative of function at xi
f1f=fi+f1i*h;//value of first derivative of function at xf
Et(2)=ffa-f1f;//truncation error at x=1
disp(f1i,"The value of first derivative of f at x=0 :")
disp(f1f,"The value of f at x=1 due to first order approximation :")
disp(Et(2),"Truncation error :")
disp("----------------------------------------------")


//for n=2, i.e, second order approximation
deff('y=f2(x)','y=derivative(f1,x,order=4)')
f2i=f2(xi);//value of second derivative of function at xi
f2f=f1f+f2i*(h^2)/factorial(2);//value of second derivative of function at xf
Et(3)=ffa-f2f;//truncation error at x=1
disp(f2i,"The value of second derivative of f at x=0 :")
disp(f2f,"The value of f at x=1 due to second order approximation :")
disp(Et(3),"Truncation error :")
disp("----------------------------------------------")

//for n=3, i.e, third order approximation
deff('y=f3(x)','y=derivative(f2,x,order=4)')
f3i=f3(xi);//value of third derivative of function at xi
f3f=f2f+f3i*(h^3)/factorial(3);//value of third derivative of function at xf
Et(4)=ffa-f3f;//truncation error at x=1
disp(f3i,"The value of third derivative of f at x=0 :")
disp(f3f,"The value of f at x=1 due to third order approximation :")
disp(Et(4),"Truncation error :")
disp("----------------------------------------------")

//for n=4, i.e, fourth order approximation
deff('y=f4(x)','y=derivative(f3,x,order=4)')
f4i=f4(xi);//value of fourth derivative of function at xi
f4f=f3f+f4i*(h^4)/factorial(4);//value of fourth derivative of function at xf
Et(5)=ffa-f4f;//truncation error at x=1
disp(f4i,"The value of fourth derivative of f at x=0 :")
disp(f4f,"The value of f at x=1 due to fourth order approximation :")
disp(Et(5),"Truncation error :")
disp("----------------------------------------------")






