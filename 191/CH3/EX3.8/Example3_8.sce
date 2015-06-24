//Non-Linear Equation
clc;
clear;
close();
funcprot(0);
format('v',9);
deff('[func1]=f(x1,x2)','func1=-2.0625*x1+2*x2-0.0625*x1^3+0.5');
deff('[func2]=g(x1,x2,x3)','func2=x3-2*x2+x1-0.0625*x2^3+0.125*x2*(x3-x1)');
deff('[func3]=h(x2,x3,x4)','func3=x4-2*x3+x2-0.0625*x3^3+0.125*x3*(x4-x2)');
deff('[func4]=k(x3,x4)','func4=-1.9375*x4+x3-0.0625*x4^3-0.125*x3*x4+0.5');
//define the corresponding partial differenciation of the function = 16
deff('[difffx1]=fx1(x1)','difffx1=-2.0625-3*0.0625*x1^2');
deff('[difffx2]=fx2(x2)','difffx2=2');

deff('[diffgx1]=gx1(x2)','diffgx1=1-0.125*x2');
deff('[diffgx2]=gx2(x1,x2,x3)','diffgx2=-2-3*0.0625*x2^2+0.125*(x3-x1)');
deff('[diffgx3]=gx3(x2)','diffgx3=1+0.125*x2');

deff('[diffhx2]=hx2(x3)','diffhx2=1-0.125*x3');
deff('[diffhx3]=hx3(x3,x4)','diffhx3=-2-0.0625*3*x3^2+0.125*x4');
deff('[diffhx4]=hx4(x3)','diffhx4 = 1+0.125*x3');

deff('[diffkx3]=kx3(x4)','diffkx3=1-0.125*x4');
deff('[diffkx4]=kx4(x3,x4)','diffkx4=-1.9375-3*0.0625*x4^2-0.125*x3');

x = [1.5 1.25 1.0 0.75]';
for i=1:6
    N(i)=i-1;
    x1(i) = x(1);x2(i)=x(2);x3(i) = x(3);x4(i)=x(4);
    J = [fx1(x(1)),fx2(x(2)),0,0;gx1(x(2)),gx2(x(1),x(2),x(3)),gx3(x(2)),0;0,hx2(x(3)),hx3(x(3),x(4)),hx4(x(3));0,0,kx3(x(4)),kx4(x(3),x(4))];
    x = x - inv(J)*[f(x(1),x(2));g(x(1),x(2),x(3));h(x(2),x(3),x(4));k(x(3),x(4))];
end
n = [N x1 x2 x3 x4];
disp(n,'The values of N x1 x2 x3 x4 respectively : ');