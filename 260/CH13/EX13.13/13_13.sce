//Eg-13.13
//pg-554

clear
clc

y(1) = 1;

deff('out = func(in1,in2)','out = 1-in1+4*in2')

h = 0.1;

//The index again is 1-11 instead of 0-10

for(i = 1:11)
    
    x(i) = 0 + (i-1)*h;
    
end

a = (2^0.5-1)/2;
b = (2-2^0.5)/2;
c = -(2^0.5)/2;
d = 1 + (2^0.5)/2;


for(i = 1)
    k1(i) = h*func(x(i),y(i));
    k2(i) = h*func(x(i)+h/2,y(i)+k1(i)/2);
    k3(i) = h*func(x(i)+h/2,y(i)+a*k1(i)+b*k2(i));
    k4(i) = h*func(x(i)+h,y(i)+c*k2(i)+d*k3(i));
    y(i+1) = y(i) + 1/6*(k1(i)+2*b*k2(i)+2*d*k3(i)+k4(i));
end

printf('The solution is summarized as :\n')
printf('   x            y\n')
for(i = 1:2)
    
    printf('%f    %f\n',x(i),y(i))

end
//we take x(1) = 0 and x(2) = 0.1, y(1) = 1 and y(2) = 1.608933

h = 0.1;

for(i = 3:5)
    yb(i) = y(i-2) + 2*0.1*func(x(i-1),y(i-1));
    y(i) = y(i-1) + 0.1/2*(func(x(i-1),y(i-1)) + func(x(i),yb(i)))
    printf('%f    %f\n',x(i),y(i))
end
