//coefficient//
s= poly ( 0,'s' );
sys = syslin ('c',10/(s+2)); //G(s)H(s)
disp(sys,"G(s)H(s)")
F=1/(1+sys)
syms t s;
Co=limit(s*F/s,s,0) //Ko=Lt s->0 (1/(1+G(s)H(S))
a=(3);
e=Co*a;
disp(e,"steady state error")
