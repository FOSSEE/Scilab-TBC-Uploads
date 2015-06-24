//Example 10.6
//Newton Method
//Page no. 322
clc;clear;close;

deff('y=f1(x,y,z)','y=x-0.1*y^2+0.05*z^2-0.7')
deff('y=f2(x,y,z)','y=y+0.3*x^2-0.1*x*z-0.5')
deff('y=f3(x,y,z)','y=z+0.4*y^2+0.1*x*y-1.2')
deff('y=f11(x,y,z)','y=1')
deff('y=f12(x,y,z)','y=-0.2*y')
deff('y=f13(x,y,z)','y=0.1*z')
deff('y=f21(x,y,z)','y=0.6*x-0.1*z')
deff('y=f22(x,y,z)','y=1')
deff('y=f23(x,y,z)','y=-0.1*x')
deff('y=f31(x,y,z)','y=0.1*y')
deff('y=f32(x,y,z)','y=0.8*y+0.1*x')
deff('y=f33(x,y,z)','y=1')
x=[0;0;0];
printf('n\txn\t\tyn\t\tzn\n---------------------------------------------------------\n')
for i=1:6
    fx=[f1(x(1),x(2),x(3));f2(x(1),x(2),x(3));f3(x(1),x(2),x(3))]
    J=[f11(x(1),x(2),x(3)),f12(x(1),x(2),x(3)),f13(x(1),x(2),x(3));f21(x(1),x(2),x(3)),f22(x(1),x(2),x(3)),f23(x(1),x(2),x(3));f31(x(1),x(2),x(3)),f32(x(1),x(2),x(3)),f33(x(1),x(2),x(3))]
    J_1=inv(J)
    printf(' %i\t%f\t%f\t%f\n',i-1,x(1),x(2),x(3))
    x=x-J_1*fx
end
printf('\n\nThe solution is x = %f, y = %f and z = %f',x(1),x(2),x(3))

printf('\n\n\nNote : There are computation errors in calculation given by the book')