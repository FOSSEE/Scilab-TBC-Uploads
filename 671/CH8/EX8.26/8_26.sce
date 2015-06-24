P=1000000
v1=11000
v2=230
f=50
Vsc=310
Psc=5210

Isc=P/v1
Z=Vsc/Isc
R=Psc/Isc/Isc
X=sqrt(Z*Z-R*R)

pf=1
theta=acos(pf)
Vd=Isc*(R*cos(theta)+X*sin(theta))
VR=Vd/v1*100
V1=v1+Vd
disp(VR,V1)

pf=0.8
theta=acos(pf)
Vd=Isc*(R*cos(theta)+X*sin(theta))
VR=Vd/v1*100
V1=v1+Vd
disp(VR,V1)

pf=0.8
theta=acos(pf)
Vd=Isc*(R*cos(theta)-X*sin(theta))    //calculation mistake in the book at this point
VR=Vd/v1*100
V1=v1+Vd
disp(VR,V1)
