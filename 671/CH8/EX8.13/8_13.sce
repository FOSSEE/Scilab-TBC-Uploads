P=100000
N1=400
N2=100
a=N1/N2
r1=0.3
r2=0.015
x1=1.1
x2=0.055
V1=2400

R=r1+a*a*r2
disp(R)
X=x1+a*a*x2
disp(X)

I1=P/V1
pf=0.8
theta=acos(pf)
Vd=I1*(R*cos(theta)+X*sin(theta))
VR=Vd/V1*100
V2=(V1-Vd)/a
disp(VR,V2)
Vd=I1*(R*cos(theta)-X*sin(theta))
VR=Vd/V1*100
V2=(V1-Vd)/a
disp(VR,V2)

pf=cos(atan(R/X))           /////wrong in the book
disp("leading",pf)
