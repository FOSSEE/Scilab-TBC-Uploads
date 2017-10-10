// using KVL we have v(t)=i(t)*R+ L* d/dt(i(t))
// taking laplace transform V(s)=I(s)*R + L*s*I(s)

s=%s;

R=10^3
L=25*10^-3

F=(50/s)/(R+s*L);

syms t s;
y=ilaplace(F,s,t);
disp(y,"i(t)=")
