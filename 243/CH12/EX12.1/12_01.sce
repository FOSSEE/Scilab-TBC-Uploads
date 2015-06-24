//Example No. 12_01
//Trapezoidal Rule
//Pg No. 373
clear ;close ;clc ;

x = poly(0,"x");
deff('F = f(x)','F = x^3 + 1');

//case(a)
a = 1;
b = 2 ;
h = b - a ;
It = (b-a)*(f(a)+f(b))/2
d2f = derivat(derivat( f(x) ))
Ett = h^3*horner(d2f,2)/12
Iexact = intg(1,2,f)
Trueerror = It - Iexact
disp(Trueerror,'True error = ',Iexact,'Iexact = ',Ett,'Ett = ',It,'It = ','case(a)')
disp('Here Error bound is an overestimate of true error')

//case(b)
a = 1;
b = 1.5 ;
h = b - a ;
It = (b-a)*(f(a)+f(b))/2
Ett = h^3*horner(d2f,1.5)/12
Iexact = intg(1,1.5,f)
Trueerror = It - Iexact
disp(Trueerror,'True error = ',Iexact,'Iexact = ',Ett,'Ett = ',It,'It = ','case(b)')