//Eg-7.8
//pg-354

clear
clc

y = [3.21 3.25 4 3.62 3.76 4.55 5.32 4.39 4.59 5 3.68 3.18 5 0 3.7 3.4 0 2.33];

x(1,1:18) = [0.12 0.12 0.17 0.24 0.1 0.11 0.10 0.10 0.17 0.17 0.15 0.23 0.21 0.37 0.28 0.32 0.28 0.22];

x(2,1:18) = [3.2 2.7 2.7 2.8 2.6 2.0 2.0 2.0 2.2 2.4 2.4 2.2 1.9 2.3 2.4 3.3 3.5 3.0];

x(3,1:18) = [0.01 0 0 0 0 0.02 0.07 0.02 0.03 0.04 0.02 0.1 0.04 0.14 0.05 0.08 0.12 0.06];

n = 3;    //since there are 3 variables
m = length(y);


for(i = 1:n)
    for(j = 1:n)
        a(i,j) = sum(x(i,:).*x(j,:)) - (sum(x(i,:))*sum(x(j,:)))/m;
    end
end

//disp(a)
for(i = 1:n)
    c(i) = sum(x(i,:).*y) - (sum(x(i,:)*sum(y)))/m;  
end

b = inv(a)*c;

//disp(b)

s = sum(b'*x)

al = (sum(y) - s)/m;

//disp(al)


b1 = b(1);
b2 = b(2);
b3 = b(3);



deff('out = func(in1, in2, in3)','out = al + b1*in1 + b2*in2 + b3*in3')

y1 = func(x(1,:),x(2,:),x(3,:));

//disp(y1)

yb(1,1:m) = sum(y)/m;

r2 = sum((y1 - yb)^2)/sum((y - yb)^2);

printf('\nThe equation finally is y = %f + (%f)b0 + (%f)b1 + (%f)b2\n',al,b(1),b(2),b(3))

printf('The value of r^2 is %f\n', r2)