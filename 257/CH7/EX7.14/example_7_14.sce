s=%s;
T=20/(s+10)

syms t s;
y=ilaplace(T,s,t);

T1=20/((s+10)*s)
c1=ilaplace(T1,s,t)

T2=20/((s+10)*s^2)
c2=ilaplace(T2,s,t)
