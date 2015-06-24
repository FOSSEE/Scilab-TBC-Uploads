//Example No. 9_11
//Cubic Spline Interpolation
//Pg No. 306
clear ; close ; clc ;

X = [ 4 9 16]
Fx = [ 2 3 4]
n = length(X)
h = diff(X)
disp(h)
x = poly(0,'x');
A(1) = 0;
A(n) = 0;

//Since we do not know only a1 = A(2) we just have one equation which can be solved directly without solving tridiagonal matrix
A(2) = 6*( ( Fx(3) - Fx(2) )/h(2) - ( Fx(2) - Fx(1) )/h(1) )/( 2*( h(1) + h(2) ) );
disp(A(2),'a1 = ');
xuk = 7;
for i = 1:n-1
    if xuk <= X(i+1) then
        break;
    end
end
u = x*ones(1,2) - X(i:i+1)
s = (  A(2)*( u(i)^3 - ( h(i)^2 )*u(i))/6*h(i)  ) + ( Fx(i+1)*u(i)- Fx(i)*u(i+1) )/h(i);
disp(s,'s(x) = ');
s_7 = horner(s,xuk);
disp(s_7,'s(7)')