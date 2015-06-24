P=10000
v1=2200
v2=220
r1=4
r2=0.04
x1=5
x2=0.05
a=v1/v2
R=r1+a*a*r2
X=x1+a*a*x2
I1=P/v1
pf=0.8
V2=v2*a
theta=acos(pf)
Vd=I1*(R*cos(theta)+X*sin(theta))
VR=Vd/v1*100
V1=v1+Vd
disp(VR,V1)

pf=cos(atan(X/R))
disp("leading",pf)

Pr=P*pf
Q=-P*sin(acos(pf))
disp(Q,Pr)
