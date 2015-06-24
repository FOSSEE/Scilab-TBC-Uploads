//coefficient//
s= poly ( 0,'s' );
sys1 = syslin ('c',(s+3)/(s+5));
sys2= syslin ('c',(100)/(s+2));
sys3= syslin ('c',(0.15)/(s+3));
G=sys1*sys2*sys3*2*5
H=1;
y=G*H; //G(s)H(s)
disp(y,"G(s)H(s)")
F=1/(1+y)
syms t s;
Co=limit(s*F/s,s,0) //Ko=Lt s->0 (1/(1+G(s)H(S))
d=diff(s*F/s,s)
C1=limit(diff(s*F/s,s),s,0) //K1=Lt s->0 (dF(s)/ds)
C2=limit(diff(d,s),s,0)   //K2=Lt s->0 (d2F(s)/ds)
a=(1+(2*t)+(5*(t^2/2)));
b=diff(a ,t);
c=diff(b,t);
e=Co*a+C1*b+C2*c;
disp(e," steadt state error")
