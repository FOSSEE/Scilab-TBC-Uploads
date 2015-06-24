//Example 10.5
//Newton Raphshon Method
//Page no. 320
clc;clear;close;

deff('y=f1(x,y)','y=x^3-3*x*y^2+1')
deff('y=f2(x,y)','y=3*x^2*y-y^3')
deff('y=f11(x,y)','y=3*x^2-6*y^2')
deff('y=f12(x,y)','y=-6*x*y')
deff('y=f21(x,y)','y=6*x*y')
deff('y=f22(x,y)','y=3*x^2-3*y^2')
x=[0;1];
printf('\nx(0) = %g\ny(0) = %g\n',x(1),x(2))
for i=1:3
    fx=[f1(x(1),x(2));f2(x(1),x(2))]
    printf('\n fx(%i) = \n',i)
    disp(fx)
    J=[f11(x(1),x(2)),f12(x(1),x(2));f21(x(1),x(2)),f22(x(1),x(2)),]
    disp(J,'J = ')
    d=det(J);
    if d==0 then
        dx1=0;dx2=0;
    else
        dx1=(fx(1)*J(2,2)-fx(2)*J(1,2))/d;
        dx2=(fx(2)*J(1,1)-fx(1)*J(2,1))/d;
    end
    x(1)=x(1)+dx1;
    x(2)=x(2)+dx2;
    printf('\nx(%i) = %g\ny(%i) = %g\n',i,x(1),i,x(2))
end