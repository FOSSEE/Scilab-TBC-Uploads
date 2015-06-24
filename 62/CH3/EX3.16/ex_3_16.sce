clear;
syms t s
x=1/(s+1)
f1=ilaplace(x)
disp(f1*'u(t)',"a) x(t)=")
y=-1/(s+1)
f2=ilaplace(y)
disp(f2*'u(-t)',"b) x(t)=")
z=s/(s^2+4)
f3=ilaplace(z)
disp(f3*'u(t)',"c) x(t)=")
zz=(s+1)/((s+1)^2+4)
f4=ilaplace(zz)
disp(f4*'u(t)',"d) x(t)=")