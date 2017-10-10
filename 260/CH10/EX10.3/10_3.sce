//Eg-10.3
//pg-434

clear
clc
close()

// A = (x-xn)/h = (x-x3)/h = (0.05*x-5)
//A is the greek alphabet 'alpha'

Y = [205;201;195;190];

X = [40;60;80;100];

T = zeros(4,4);

T(:,1) = Y;

for(j = 2:4)
    for(i = 1:4+1-j)
        T(i,j) = T(i+1,j-1) - T(i,j-1);
    end
end

//disp(T)

//from equation [14], the interpolating polunomial is 

//p3 = f(x3) + A*Df(x3) + A*(A+1)/2!*D2f(x3) + A*(A+1)*(A+2)/3!*D3f(x3)

//note that A is used in place of 'alpha' and D in place of 'delta'

// The above expression p3 can also be written as 

//p3 = f(x3) + A * [ Df(x3) + D2f(x3)/2 + 1/3*D3f(x3) ] + A^2 * [ D2f(x3)/2 + 1/2*D3f(x3)] + A^3/6 * D3f(x3)..............call this expression 1

f = T(4,1);
Df = T(3,2);
D2f = T(2,3);
D3f = T(1,4);

//Substituting the values of D,D2,D3 in the expression 1 we finally get

// p3 = a0 + a1*A + a2*A^2 + a3*A^3

a0 = f;
a1 = Df + D2f/2 + 1/3*D3f;
a2 = D2f/2 + 1/2*D3f;
a3 = 1/6*D3f;

//disp(a0,a1,a2,a3)

//Now taking A = 0.05*x - 5

//p3 = b0 + b1*x + b2*x^2 + b3*x^3

b0 = a0 -5*a1 +25*a2 - 125*a3;
b1 = 0.05*a1 - 0.5*a2 + 3.75*a3;
b2 = 0.0025*a2 - 0.0375*a3;
b3 =  12.5*10^(-5)*a3;

//disp(b3,b2,b1,b0)

printf('The polynomial is  p(T) = (%f)*T^3 + (%f)*T^2 + (%f)*T + (%f)\n',b3,b2,b1,b0)

deff('out = func(in)','out = b3*in^3 + b2*in^2 + b1*in + b0')


x = 40:100;
y = func(x);

plot(x,y)
plot(X,Y,'db')

legend('Interpolated polynomial','Experimental data points')
xlabel('Temperature')
ylabel('Energy')