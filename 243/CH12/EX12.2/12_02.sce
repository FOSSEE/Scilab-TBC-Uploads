//Example No. 12_02
//Tapezoidal rule
//Pg No. 376
clear ;close ;clc ;

deff('F = f(x)','F = exp(x)');
a = -1 ;
b = 1 ;

//case(a)
n = 2
h = (b-a)/n 
I = 0
for i = 1:n
    I = I + f(a+(i-1)*h)+f(a+i*h);
end
I = h*I/2 ;
disp(I,'intergral for case(a),Ia = ')

//case(b)
n = 4
h = (b-a)/n 
I = 0
for i = 1:n
    I = I + f(a+(i-1)*h)+f(a+i*h);
end
I = h*I/2 ;
Iexact = 2.35040
disp('n = 4 case is better than n = 2 case',Iexact,'exact integral,Iexact = ',I,'intergral for case(b),Ib = ')