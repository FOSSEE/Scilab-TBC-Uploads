syms K1 K t;
s=%s;
p=K1*K;
q=t*s+1+(K1*K);
T=p/q;
disp(T,"V(s)/R(s)")
// sensitivity w.r.t K is dT/dK*K/T
S=(diff(T,K))*(K/T)
// given K1=50 K=1.5
s=0
S=horner(S,s)
K1=50;
K=1.5;
S=1/(1+K1*K)
disp(S,"sensitivity=")