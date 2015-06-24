clear;
syms t s
x=(2*s+4)/(s^2+4*s+3)
f1=ilaplace(x)
disp(f1*'u(t)',"a) x(t)=")
y=-(x)
f2=ilaplace(y)
disp(f2*'u(-t)',"b) x(t)=")
q= %s
z=pfss((2*q+4)/(q^2+4*q+3))
f3=ilaplace(-z(1))
f4=ilaplace(z(2))
ff=f3+f4
disp(f3*'u(-t)'+f4*'u(t)',"c) x(t)=")