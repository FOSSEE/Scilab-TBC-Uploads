//coefficient//
s=%s;
syms k t;
y=k/((s+1)*s^2*(s+4));
disp(y,"G(s)H(s)=")
r=1+(8*t)+(18*t^2/2);
disp(r,"r(t)=")
R=laplace(r,t,s);
disp(R,"R(s)=")
e=limit((s*R)/(1+y),s,0)
disp(e,"Ess=")
printf('Given Ess = 0.8 \n")
e=0.8;
k=72/e;
disp(k,"k=")
