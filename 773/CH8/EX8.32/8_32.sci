//coefficient//
s=%s;
sys=syslin('c',(9*(1+2*s))/(s^2+0.6*s+9));
disp(sys,"C(s)/R(s)=")
//given r(t)=u(t)
syms t s;
R=laplace('1',t,s);
disp(R,"R(s)=")
C=R*sys;
disp(C,"C(s)=")
c=ilaplace(C,s,t)
disp(c,"c(t)=")
G=9/(s^3+0.6*s^2);
disp(G,"G(s)=")
H=1;
y=1+G*H;
syms t s;
Kp=limit(s*G/s,s,0)
Kv=limit(s*G,s,0)
Ka=limit(s^2*G,s,0)
R=laplace('(1+t+(t^2/2))',t,s)
//steady state error =Lt s->0 sR(S)/1+G(s)H(S)
e=limit(s*R/(1+y),s,0); //e=error for ramp input
disp(e,"steady state error(Ess)")
