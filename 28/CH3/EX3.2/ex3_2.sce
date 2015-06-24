syms K;
s=%s;
G=syslin('c',25(s+1)/(s+5));
p=K;
q=s^2+s;
J=p/q;
F=G*J;
T=F/(1+F); // Closed loop transfer function
disp(T,"C(s)/R(s)")
// sensitivity w.r.t K = dT/dK*K/T
S=(diff(T,K))*(K/T)
disp(S,"Sensitivity")