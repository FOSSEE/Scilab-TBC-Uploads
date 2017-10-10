s=%s;

F=(s^2+3)/((s^2+2*s+5)*(s+2));

syms t s;
y=ilaplace(F,s,t);
disp(y,"f(t)=")