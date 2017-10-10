// about the analytical integration for the analytical solution
//Eg-13.4
//pg-529

clear
clc


x(1) = 0;
yb(1) = 0;
y(1) = 1;    //Initial condition
h = 0.1;
deff('out = func(in1,in2)','out = 0.5*(1+in1)*in2^2')

//Taking the exact values using the expression calculated analytically as y = 4/(4-2*x-x^2)
z(1) = exp(x(1)^3/3);

for(i = 2:11)
    
    x(i) = 0.1+(i-2)*0.1;
    z(i+1) = 4/(4-2*x(i)-x(i)^2);
end

for(i = 1:10)
    yb(i+1) = y(i) + h*func(x(i),y(i));
    y(i+1) = y(i) + h/2*(func(x(i),y(i)) + func(x(i+1),yb(i+1)));
end



printf('   x         yPc        yExact\n')

for(i = 2:11)
    printf('%f    %f    %f\n',x(i),y(i),z(i+1))
end

printf('\nSolving analytically gives :\n')
printf('y = 4/(4-2*x-x^2)\n')