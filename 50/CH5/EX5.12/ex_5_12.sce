// example 5.12
// caption: solve the integral by 1)mid-point rule,2)two-point open type rule


// let integration of f(x)=sin(x)/(x) in the range [0,1]  is equal to I1 and I2 
// 1)mid -point rule;
a=0;b=1;
h=(b-a)/2;

x=0:h:1;
deff('[y]=f(x)','y=sin(x)/x')
I1=2*h*f(x(1)+h)


//2)  two-point open type rule
h=(b-a)/3;
I2=(3/2)*h*(f(x(1)+h)+f(x(1)+2*h))