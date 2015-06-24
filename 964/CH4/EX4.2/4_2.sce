clc;
clear;
function y=f(x)
    y=cos(x)
endfunction
xi=%pi/4;
xf=%pi/3;
h=xf-xi;
fi=f(xi);//function value at xi
ffa=f(xf);//actual function value at xf

//for n=0, i.e, zero order approximation
ff=fi;
et(1)=(ffa-ff)*100/ffa;//percent relative error at x=1
disp(ff,"The value of f at x=1 due to zero order approximation :")
disp(et(1),"% relative error :")
disp("----------------------------------------------")

//for n=1, i.e, first order approximation
deff('y=f1(x)','y=derivative(f,x,order=4)')
f1i=f1(xi);//value of first derivative of function at xi
f1f=fi+f1i*h;//value of first derivative of function at xf
et(2)=(ffa-f1f)*100/ffa;//% relative error at x=1
disp(f1f,"The value of f at x=1 due to first order approximation :")
disp(et(2),"% relative error :")
disp("----------------------------------------------")


//for n=2, i.e, second order approximation
deff('y=f2(x)','y=derivative(f1,x,order=4)')
f2i=f2(xi);//value of second derivative of function at xi
f2f=f1f+f2i*(h^2)/factorial(2);//value of second derivative of function at xf
et(3)=(ffa-f2f)*100/ffa;//% relative error at x=1
disp(f2f,"The value of f at x=1 due to second order approximation :")
disp(et(3),"% relative error :")
disp("----------------------------------------------")


//for n=3, i.e, third order approximation
deff('y=f3(x)','y=derivative(f2,x,order=4)')
f3i=f3(xi);//value of third derivative of function at xi
f3f=f2f+f3i*(h^3)/factorial(3);//value of third derivative of function at xf
et(4)=(ffa-f3f)*100/ffa;//% relative error at x=1
disp(f3f,"The value of f at x=1 due to third order approximation :")
disp(et(4),"% relative error :")
disp("----------------------------------------------")


//for n=4, i.e, fourth order approximation
deff('y=f4(x)','y=derivative(f3,x,order=4)')
f4i=f4(xi);//value of fourth derivative of function at xi
f4f=f3f+f4i*(h^4)/factorial(4);//value of fourth derivative of function at xf
et(5)=(ffa-f4f)*100/ffa;//% relative error at x=1
disp(f4f,"The value of f at x=1 due to fourth order approximation :")
disp(et(5),"% relative error :")
disp("----------------------------------------------")


//for n=5, i.e, fifth order approximation
f5i=(f4(1.1*xi)-f4(0.9*xi))/(2*0.1);//value of fifth derivative of function at xi (central difference method)
f5f=f4f+f5i*(h^5)/factorial(5);//value of fifth derivative of function at xf
et(6)=(ffa-f5f)*100/ffa;//% relative error at x=1
disp(f5f,"The value of f at x=1 due to fifth order approximation :")
disp(et(6),"% relative error :")
disp("----------------------------------------------")


//for n=6, i.e, sixth order approximation
deff('y=f6(x)','y=derivative(f5,x,order=4)')
f6i=(f4(1.1*xi)-2*f4(xi)+f4(0.9*xi))/(0.1^2);//value of sixth derivative of function at xi (central difference method)
f6f=f5f+f6i*(h^6)/factorial(6);//value of sixth derivative of function at xf
et(6)=(ffa-f6f)*100/ffa;//% relative error at x=1
disp(f6f,"The value of f at x=1 due to sixth order approximation :")
disp(et(6),"% relative error :")
disp("----------------------------------------------")





