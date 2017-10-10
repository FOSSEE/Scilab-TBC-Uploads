//Eg-13.14
//pg-556

clear
clc

deff('out = func(in1,in2)','out = -0.3*(in2-50)^1.25')

h = 0.1;
x(1) = 0;
y(1) = 100;
y(2) = 96.20249;    //from the question
x(2) = x(1) + h;

n = 10/h;

for(i = 1:n)
    
    x(i+1) = x(i) + h ;
    
end




for(i = 2:n)

    yb(i+1) = y(i-1) + 2*h*func(x(i),y(i));
    y(i+1) = y(i) + h/2*(func(x(i),y(i)) + func(x(i+1),yb(i+1)));
    
end

printf('  x            y\n')
for(i = 1:10)
   
    printf('%f    %f\n',x(i*10+1),y(i*10+1))

end

printf('\n\nThe value of T at t = 10 agrees with that of the analytical solution:\nT = 50 + (0.075t + 0.37604)^-4\n')