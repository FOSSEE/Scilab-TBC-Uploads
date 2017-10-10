//Eg-13.6
//pg-533

clear
clc

//Equation [27] is used for computation.

deff('out = func(in1,in2)','out = in2-in1')
h = 0.1;
y(1) = 0;

//The given equation dy/dx = y-x is of the form dy/dx + Py = Q
// Finally the analytical expression is y = x-exp(x) + 1

//The index starts from 1 and goes up to 11 instead of 0 to 10

for(i = 1:11)
    x(i) = 0 + (i-1)*h;
    z(i) = x(i) - exp(x(i)) + 1;
    
end

a = (2^0.5-1)/2;
b = (2-2^0.5)/2;
c = -(2^0.5)/2;
d = 1 + (2^0.5)/2;

printf('i      x(i)        y(i)          k1           k2          k3          k4           y(i+1)      y(i+1)Exact\n')
for(i = 1:10)
    k1(i) = h*func(x(i),y(i));
    k2(i) = h*func(x(i)+h/2,y(i)+k1(i)/2);
    k3(i) = h*func(x(i)+h/2,y(i)+a*k1(i)+b*k2(i));
    k4(i) = h*func(x(i)+h,y(i)+c*k2(i)+d*k3(i));
    y(i+1) = y(i) + 1/6*(k1(i)+2*b*k2(i)+2*d*k3(i)+k4(i));
    
    printf(' %d    %f    %f    %f    %f    %f    %f    %f    %f\n',i,x(i),y(i),k1(i),k2(i),k3(i),k4(i),y(i+1),z(i+1))
end

printf(' 11    %f    %f\n',x(i+1),y(i+1))
printf('\n Therefore, y(1) = %f\n',y(i+1))

printf('\n Refer to the textbook for the analytical solution\n')