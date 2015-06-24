//coefficient//
s = poly ( 0,'s' )
sys = syslin ('c',(20)/(s^2+7*s+10))
a=sys/.(2*(s+1))  //simplifying the internal feedback loop
b=20*2*a;  
disp(b,"G(s)")
c=1;
disp(c,"H(s)")
OL=b*c;
disp(OL,"G(s)H(s)")
,"G(s)*H(s)")
syms t s;
Kp=limit(s*OL/s,s,0) //Kp= position error coefficient
Kv=limit(s*OL,s,0) //Kv= velocity error coefficient
Ka=limit(s^2*OL,s,0) //Ka= accelaration error coefficient
//given input r(t)=6
R=laplace('6',t,s)
//steady state error =Lt s->0 sR(S)/1+G(s)H(S)
e1=limit(s*R/(1+OL),s,0); //e=error for given input
disp(e1,"error")
//given input r(t)=8t
M=laplace('8*t',t,s)
//steady state error =Lt s->0 sR(S)/1+G(s)H(S)
e2=limit(s*M/(1+OL),s,0); //e=error for given input
disp(e2,"error")
//given input r(t)=10+4t+3t^2/2
N=laplace('10+4*t+(3*t^2)/2',t,s)
//steady state error =Lt s->0 sR(S)/1+G(s)H(S)
e3=limit(s*N/(1+OL),s,0); //e=error for given input
disp(e3,"error")



