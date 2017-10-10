//given d^2/dt(y(t)) + 6*d/dt(y(t)) + 8*y(t)

s=%s;

F= 16/((s+1)*(s^2+6*s+8));

syms t s;
y=ilaplace(F,s,t);
disp(y,"f(t)=")