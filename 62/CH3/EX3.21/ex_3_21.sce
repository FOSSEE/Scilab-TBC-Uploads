syms t s
s=%s
a=ilaplace(2/(s^2+4*s+3))
b=ilaplace(2*s/(s^2+4*s+3))
c=ilaplace(4/(s^2+4*s+3))
disp(a*'u(t)'+b*'u(t-2)'+c*'u(t-4)',"x(t)=")
