s=%s;

F=(s-2)/(s*(s+1)^3);

syms t s;
y=ilaplace(F,s,t);
disp(y,"f(t)=")