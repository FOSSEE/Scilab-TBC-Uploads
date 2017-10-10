//Eg-7.6
//pg-345

clear
clc
close()

x = [10 20 30 40 50 60];
y = [35 37 38 39 41 43];

m = length(x);
n = 2;    //since we have 2 variables

//Using S for summation    eg: Sx2y => summation(x^2*y)

Sx = sum(x);

Sx2 = sum(x.^2);

Sx3 = sum(x.^3);

Sx4 = sum(x.^4);

Sy = sum(y);

Sxy = sum(x.*y);

Sx2y = sum((x.^2).*y);

a(1,1) = Sx2 - (Sx)^2/m;
a(1,2) = Sx3 - Sx*Sx2/m;
a(2,1) = Sx3 - Sx2*Sx/m;
a(2,2) = Sx4 - Sx2^2/m;

c(1,1) = Sxy - Sx*Sy/m;
c(2,1) = Sx2y - Sx2*Sy/m;


b = inv(a)*c;


//The coefficient 'alpha' can be obtained from equaiton 'alpha' = Sy/m - (b(1)*Sx + b(2)*Sx2)/m ;

alpha = Sy/m - (b(1)*Sx + b(2)*Sx2)/m ;

printf('\nThe coefficent alpha = %f\n',alpha)

printf('\nThe lease square polynomial of second order is, thus \n    M = %f + (%f)*v + (%f)*v^2\n\n',alpha,b(1),b(2))

deff('out = func(in)','out = alpha + b(1)*in + b(2)*in^2')

printf('The fit of the polynomial is shown in the figure\n')

plot(x,y,'bo')
plot(x,func(x))
legend('data points given','polynomial got by regression')
xlabel('v,kmph')
ylabel('M,kmpl')