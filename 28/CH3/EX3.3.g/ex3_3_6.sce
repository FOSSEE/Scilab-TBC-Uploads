// for open loop
syms t g s;
s=%s;
K1=50;
K=1.5;
g=20;
V=syslin('c',((K1*K)*0.8)/(s*((g*s)+1)))
// taking inverse laplace
v=ilaplace(V,s,t)
v=60(11-%e^(-t/20))
// given v=90%
v=0.9;
t=-20*log(1-v);
disp(t,"time open=")
// for closed loop
syms K' g'
s=%s;
V=syslin('c',(60.8*K')/(s*((g'*s)+1)))
// taking inverse laplace
v=ilaplace(V,s,t)
// given 
K'=75/76; 
g'=.263;
v=60(1-%e^(-t/.263))
// at v=90%
v=0.9;
t=-.263*log(1-(v/60));
disp(t,"time closed=")

