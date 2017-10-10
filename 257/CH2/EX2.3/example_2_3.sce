s=%s;

F=(s+2)/(s*(s+3)*(s+4))

syms t s;
y=ilaplace(F,s,t);
disp(y,"f(t)=")