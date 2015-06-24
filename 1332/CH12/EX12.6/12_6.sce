//Example 12.6
//Chebyshev Interpolating Polynomial
//Page no. 407
clc;close;clear;

deff('y=f(x)','y=1/(1+exp(-x))');
a=-2;b=2;n=3;
D=%pi/(2*n+2)
for k=0:n
    t(k+1)=-cos(D*(2*k+1))
    x(k+1)=((a+b)/2)+(b-a)*t(k+1)/2
    y(k+1)=f(x(k+1))
    C(k+1)=0
end
for j=0:n
    for k=0:n
        L=(2*k+1)*D
        C(j+1)=C(j+1)+y(k+1)*cos(j*L)
    end
end
C(1)=C(1)/(n+1);
for j=1:n
    C(j+1)=2*C(j+1)/(n+1)
end

x=poly(0,"x")
T(1)=1;T(2)=x;
for j=1:n-1
    T(j+2)=2*x*T(j+1)-T(j)
end
P=C(1)*T(1)
for j=1:n
    P=P+C(j+1)*T(j+1)
end
disp(P,'P3(x)=')
printf('\n\n\nNote : Book has Calculation errors in calculation of coefficients')