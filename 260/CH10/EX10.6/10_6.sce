//Eg-10.6
//pg-440

clear
clc
close()

X = [3;5;6;9];

Y = [293;508;585;764];

T = zeros(4,4);

T(:,1) = Y;

for(j = 2:4)
    for(i = 1:4+1-j)
        T(i,j) = (T(i+1,j-1) - T(i,j-1))/(X(j-1+i) - X(i));
    end
end

//disp(T)
  
//p3 = a0 + a1 * (x-3) + a2 * (x-3)*(x-5) + a3 * (x-3)*(x-5)*(x-6)

a0 = T(1,1);
a1 = T(1,2);
a2 = T(1,3);
a3 = T(1,4);

//p3 = b0 + b1*x + b2*x^2 + b3*x^3

b0 = a0 + 15*a2 - 3*a1 -90*a3;
b1 = a1 - 8*a2 + 63*a3;
b2 = a2 - 14*a3;
b3 = a3;

//disp(b0,b1,b2,b3)

deff('out = func(in)','out = b0 + b1*in + b2*in^2 + b3*in^3')

x = 3:9;
y = func(x);
plot(x,y)

plot(X,Y,'db')

legend('Divided difference polynomial of order 3','Experimental data')

xlabel('F')
ylabel('P')



