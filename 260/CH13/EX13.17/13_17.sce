//Eg-13.17
//pg-563

clear
clc

deff('out = func(in1,in2)','out = in1^3*(cos(in2))^2 - in1*sin(2*in2)')
// Using the analytical expression in the question
deff('out = F(in1)','out = atan(0.5*(in1^2 + exp(-in1^2) - 1))')


x(1) = 0;
y(1) = 0;

h = 0.1;

for(i = 1:10)
    x(i+1) = x(i) + h;
    
end

//Using RK method

a = (2^0.5-1)/2;
b = (2-2^0.5)/2;
c = -(2^0.5)/2;
d = 1 + (2^0.5)/2;

printf('   t          y         F(x,y)\n')

for(i = 1:4)
    
    k1(i) = h*func(x(i),y(i));
    k2(i) = h*func(x(i)+h/2,y(i)+k1(i)/2);
    k3(i) = h*func(x(i)+h/2,y(i)+a*k1(i)+b*k2(i));
    k4(i) = h*func(x(i)+h,y(i)+c*k2(i)+d*k3(i));
    y(i+1) = y(i) + 1/6*(k1(i)+2*b*k2(i)+2*d*k3(i)+k4(i));
    printf('%f    %f    %f\n',x(i),y(i),func(x(i),y(i)))
    
end

printf('\n\nUsing Adams Predictor-Corrector Method & its comparision with the analytical solution:\n\n')

h = 0.1;
for(i = 4:6)
    
    yb(i+1) = y(i) + h/24*(55*func(x(i),y(i)) - 59*func(x(i-1),y(i-1)) + 37*func(x(i-2),y(i-2)) - 9*func(x(i-3),y(i-3)));
    y(i+1) = y(i) + h/24*(9*func(x(i+1),yb(i+1)) + 19*func(x(i),y(i)) - 5*func(x(i-1),y(i-1)) + func(x(i-2),y(i-2)));
    
end

printf('   t         yadams    yanalytical\n')

for(i = 5:6)
    printf('%f    %f    %f\n',x(i),y(i),F(x(i)))
end
