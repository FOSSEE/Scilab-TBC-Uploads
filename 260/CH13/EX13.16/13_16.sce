//Eg-13.16
//pg-562

clear
clc

deff('out = func(in1,in2)','out = sin(in1)-in2')

//To get the answers in the text book we shouldn't take sint=Vs to be unity!

x(1) = 0;
y(1) = 0;

h = 0.1;

for(i = 1:10)
    x(i+1) = x(i) + h;
end

a = (2^0.5-1)/2;
b = (2-2^0.5)/2;
c = -(2^0.5)/2;
d = 1 + (2^0.5)/2;

printf('   t          y\n')

for(i = 1:4)
    
    k1(i) = h*func(x(i),y(i));
    k2(i) = h*func(x(i)+h/2,y(i)+k1(i)/2);
    k3(i) = h*func(x(i)+h/2,y(i)+a*k1(i)+b*k2(i));
    k4(i) = h*func(x(i)+h,y(i)+c*k2(i)+d*k3(i));
    y(i+1) = y(i) + 1/6*(k1(i)+2*b*k2(i)+2*d*k3(i)+k4(i));
    printf('%f    %f\n',x(i),y(i))
    
end

h = 0.1;

for(i = 4:10)
    yb(i+1) = y(i-3) + 4*h/3*(2*func(x(i-1),y(i-1)) + 2*func(x(i-2),y(i-2)));
    y(i+1) = y(i-1) + h/3*(func(x(i-1),y(i-1)) + 4*func(x(i),y(i)) + func(x(i+1),yb(i+1)) );

    
end

printf('\n\nUsing the Milnes predictor-corrector Method:\n\n')

printf('   t          y\n')
for(i = 5:11)
    printf('%f    %f\n',x(i),y(i))
end
