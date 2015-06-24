//coefficient//
s= poly ( 0,'s' );
sys = syslin ('c',10/(s+2)); //G(s)H(s)
disp(sys,"G(s)H(s)")
F=1/(1+sys)
syms t s;
Co=limit(s*F/s,s,0) //Ko=Lt s->0 (1/(1+G(s)H(S))
d=diff(s*F/s,s)
C1=limit(diff(s*F/s,s),s,0) //K1=Lt s->0 (dF(s)/ds)
C2=limit(diff(d,s),s,0)   //K2=Lt s->0 (d2F(s)/ds)
//given input is r(t)=1+2*t+(t^2)/2 & R(s)=laplace(r(t))
a=(1+2*t+(t^2)/2);
b=diff(a,t);
c=diff(b,t);
e=Co*a+C1*b+C2*c //error by dynamic coefficient method


 
