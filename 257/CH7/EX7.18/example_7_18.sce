q=poly([0 1 2],'s','coeff');
G=1/q //gain FACTOR=1
H=1
F=1/(1+G*H)

syms t s;
Ko=limit(s*F/s,s,0) //Ko=Lt s->0 (1/(1+G(s)H(S))
d=diff(s*F/s,s);
K1=limit(diff(s*F/s,s),s,0) //K1=Lt s->0 (dF(s)/ds)
K2=limit(diff(d,s),s,0)   //K2=Lt s->0 (d2F(s)/ds)
dd=diff(d,s)
K3=limit(diff(dd,s),s,0)
disp(K3)

a=(2+4*t+6*(t^2)+2*(t^3))
b=diff( a,t)
c=diff(b,t)
d=diff(c,t)
e=(Ko*a)+(K1*b)+(K2*c)+(K3*d) //error by dynamic coefficient method
disp(e,"error")

