p=3/5
q=poly([10 7 1],'s','coeff');
G=p/q 
H=1
y=G*H 
F1=1/(1+y)

F=1/(1+y);
disp(F,"1/(1+G(s)H(s))=")
syms t s;
Ko=limit(s*F/s,s,0) //Ko=Lt s->0 (1/(1+G(s)H(S))
d=diff(s*F/s,s);
K1=limit(diff(s*F/s,s),s,0) //K1=Lt s->0 (dF(s)/ds)
K2=limit(diff(d,s),s,0)   //K2=Lt s->0 (d2F(s)/ds)

a=(6+5*t+6*(t^2)/2)
b=diff((6+5*t+6*(t^2)/2) ,t)
c=diff(b,t)
e=Ko*a+K1*b+K2*c //error by dynamic coefficient method
disp(e,"e = ")

