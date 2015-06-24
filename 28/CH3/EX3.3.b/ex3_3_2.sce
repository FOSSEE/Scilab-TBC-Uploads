syms A K K1 t
s=%s;
p=K1*K*A;
q=s*(1+(t*s)+(K1*K));
K=1.5;
K1=50;
V=p/q
v=limit(s*V,s,0)
// given steady state speed = 60km/hr
A=60*(1+(K1*K))/(K1*K)
// steady error e(ss)=A-v
v=60;
e=A-v;
disp(e,"e(ss)=")
