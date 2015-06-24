//coefficient//
p=poly([60],'s','coeff');
q=poly([12 7 1],'s','coeff');
G=p/q;
disp(G,"G(s)=") 
H=1;
y=G*H
F=1/(1+y);
disp(F,"1/(1+G(s)H(s))=")
syms t s;
Ko=limit(s*F/s,s,0) //Ko=Lt s->0 (1/(1+G(s)H(S))
d=diff(s*F/s,s);
K1=limit(diff(s*F/s,s),s,0) //K1=Lt s->0 (dF(s)/ds)
K2=limit(diff(d,s),s,0)   //K2=Lt s->0 (d2F(s)/ds)
//given input is r(t)=4+3*t+8(t^2)/2 & R(s)=laplace(r(t))
a=(4+3*t+8*(t^2)/2)
b=diff(4+3*t+8*(t^2)/2 ,t)
c=diff(b,t)
e=Ko*a+K1*b+K2*c //error by dynamic coefficient method
disp(e,"error")


 
