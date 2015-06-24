//coefficient//
syms s,t,k;
s=%s;
y=k/(s*(s+2)*(1+0.5*s)) //G(s)H(s)
disp(y,"G(s)H(s)")
//R=laplace('3*t',t,s)
R=laplace('3*t',t,s)
e=limit(s*R/(1+y),s,0);
disp(e," steady state error")
k=4;//given
y=e;
disp(y,"state state error when k=4")



