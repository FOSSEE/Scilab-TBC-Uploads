//clear//
//Example9.14:Lapalce Transform 
//x(t) = t.exp(-at), t>0
//x(t) = (t^2)/2.exp(-at), t>0
s =%s ;
syms t ;
a =10;
x1 = laplace('t*%e^(-10*t)',t,s);
disp(x1)
x2 = laplace('((t^2)/2)*%e^(-10*t)',t,s);
disp(x2)
//Result
//1/((s+10)^2)
// 1/((s+10)^3)
