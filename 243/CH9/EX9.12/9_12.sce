//Example No. 9_12
//Cubic Spline Interpolation
//Pg No. 313
clear ; close ;clc ;

X = 1:4 ;
Fx = [ 0.5 0.3333 0.25 0.2]
n = length(X)
h = diff(X)
disp(h)
x = poly(0,'x');
A(1) = 0;
A(n) = 0;
//Forming Tridiagonal Matrix
//take make diagonal below main diagonal be 1 , main diagonal is 2 and diagonal above main diagonal is 3
diag1 = h(2:n-2);
diag2 = 2*(h(1:n-2)+h(2:n-1));
diag3 = h(2:n-2);
TridiagMat = diag(diag1,-1)+diag(diag2)+diag(diag3,1)
disp(TridiagMat);
D = diff(Fx);
D = 6*diff(D./h);
disp(D) 
A(2:n-1) = TridiagMat\D' 
disp(A)
xuk = 2.5;
for i = 1:n-1
    if xuk <= X(i+1) then
        break;
    end
end
u = x*ones(1,2) - X(i:i+1)
s = (  A(i)*( h(i+1)^2*u(2) - u(2)^2 )/( 6*h(i+1) ) ) + (  A(i+1)*( u(1)^3 - ( h(i)^2 )*u(1))/6*h(i)  ) + ( Fx(i+1)*u(1)- Fx(i)*u(2) )/h(i);
disp(s,'s(x) = ');
s2_5 = horner(s,xuk);
disp(s2_5,'s(2.5)') 