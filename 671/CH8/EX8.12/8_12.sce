P=10000
v1=2300
v2=230
a=v1/v2
f=50
r1=3.96
r2=0.0396
x1=15.8
x2=0.158

R=r1+a*a*r2
X=x1+a*a*x2
V2=v2*a
I=P/V2
theta=acos(0.80)
V1=V2+I*(R*cos(theta)+X*sin(theta))
disp(V1)
VR=(V1-V2)/V2
disp(VR)

pf=X/sqrt(R*R+X*X)
theta2=acos(pf)
Il=I*(cos(theta)-%i*sin(theta))
Ic=real(Il*tan(theta2))-imag(Il)
Rating_Cap=V2*Ic
disp(Rating_Cap)
V1=V2
disp(V1)
