//Eg-4.14
//pg-179

clear
clc

deff('[z]=f(x)','z=4*x^3+3*x^2+2*x+1');


deriv=0;
a=[1 2 3 4];
F5=feval(5,f);
F=a(4);
x=5;
for i=1:3
    deriv=deriv*x+F;
    F=F*x+a(4-i);
end



printf('The value of the function at x = 5 is %f\n',F5)
printf(' The value of the derivative of the function at x = 5 is %f\n',deriv)
