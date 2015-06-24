syms t s
s= %s
a1=pfss((2*s+1)/(s+2))
f1=ilaplace(a1(1))
fx=f1
disp(fx*'u(t)'+'2*delta(t)' ,"a) x(t)=")
a2=pfss((s^2+6*s+7)/(s^2+3*s+2))
f1=ilaplace(a2(1))
f2=ilaplace(a2(2))
fy=f1+f2
disp(fy*'u(t)'+'delta(t)' ,"b) x(t)=")
a3=pfss((s^3+2*s^2+6)/(s^2+3*s))
f1=ilaplace(a3(1))
f2=ilaplace(a3(2))
fz=f1+f2
disp(fz*'u(t)'+'-delta(t)+delta1(t)',"c) x(t)=")