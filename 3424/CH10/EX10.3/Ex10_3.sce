clc
//Initialization of variables
th=40 //degrees
h=5 //ft
b=12 //ft
Q=10.0 //m^3/s
k=3.281 // ft to m conversion
So=0.0014
th=th*%pi/180
b=b/k
h=h/k
ka=1
eta=0.030
y= poly(0,'y');
A=y*(y/tan(th))+b*y
P=b+2*(y/sin(th))
Rh=A/P
// Q=10=ka/eta * A*Rh^(2/3) * So^(1/2)
// Calculations
lambda=roots((A)^5 - 515*(P)^2)
for j=1:10
if (real(lambda(j))>0 & imag(lambda(j))==0) 
    remember=j
end
end
// results
printf("The roots are")
disp(lambda)
printf ("\n The only positive real root gives us the solution which is y = %.2f m",lambda(remember))
