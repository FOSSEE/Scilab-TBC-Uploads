//caption:root_locus
//example 7.24.11
//page 308
clc;
s=%s;
syms K
clf();
g=K*(s+0.1)/(s*(s-0.2)*(s^2+s+0.6));
Z=2
P=2
disp("the characterstics eq. is determined as:")
CH=(s*(s-0.2)*(s^2+s+0.6))+K*(s+0.1)
CH=sym('(s*(s-0.2)*(s^2+s+0.6))+K*(s+0.1)');
disp('=0',CH,"characterstics_eq,CH=")
eq=(s*(s-0.2)*(s^2+s+0.6))
p=roots(eq)
disp(p,"open loop poles are:")
c0=coeffs(CH,'s',0);
c1=coeffs(CH,'s',1);
c2=coeffs(CH,'s',2);
c3=coeffs(CH,'s',3);
c4=coeffs(CH,'s',4);
b=[c0 c1 c2 c3 c4 ]
routh=[b([5,3,1]);b([4,2]),0]
routh=[routh;-det(routh(1:2,1:2))/routh(2,1),routh(1,3),0]
routh(3,1)=simple(routh(3,1))
t=routh(2:3,1:2)
l=simple(-det(t)/t(2,1))
routh=[routh;l,0,0]
routh=[routh;K,0,0]
K=sym('-(s*(s-0.2)*(s^2+s+0.6))/(s+0.1)')
d=diff(K,s)
e=3*s^4+2*s^3+0.64*s^2+0.08*s-0.12
r=roots(e);
disp(r,"r=")
disp("since -0.37 and 0.08 lies on root locus, so the breakaway point is -0.37 and 0.08 ")
disp(routh,"routh=")
disp("for given system to be marginally stable:");
disp("(625*K^2-310*K+33)/(625*K-275)=0 ");
disp("which gives:");
disp("K=0.148 and 0.352");
K1=0.148;
K2=0.352
a=((11-25*K1)/20)*s^2+K1/10//intersection of root locus with jw axis
r1=roots(a)
b=((11-25*K2)/20)*s^2+K2/10//intersection of root locus with jw axis
r2=roots(b)
disp(r1,r2,"root locus crosses imaginary axis at:")
g=(s+0.1)/(s*(s-0.2)*(s^2+s+0.6));
G=syslin('c',g)
evans(G,200)
xgrid(2)
v=[-1 0.7 -2 2];
mtlb_axis(v)