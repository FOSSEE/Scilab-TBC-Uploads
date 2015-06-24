P=25000
V1=2200
V2=220
a=V1/V2
f=50
r1=2
r2=0.025
x1=7
x2=0.07
Xm=16000

Im=V2/Xm
disp("pf=0, 90 degree lag Po=0", Im)

R=r1+a*a*r2
X=x1+a*a*x2
Z=sqrt(R*R+X*X)
Ifl=P/V1
Vsc=Z*Ifl
Vsc_percent=Vsc/V1*100
disp(Vsc,Vsc_percent)
Im=Vsc/Xm
Im_percent=Im/Ifl*100
disp(Im,Im_percent)

Sc_pf=cos(atan(X/R))
disp(Sc_pf)

////////////Per unit
ZBpu=1000*2.2*2.2/25
r1pu=r1/193.6
r2pu=a*a*r2/193.6
x1pu=x1/193.6
x2pu=a*a*x2/193.6

Rpu=r1pu+r2pu
Xpu=x1pu+x2pu

Xmpu=Xm/193.6
disp(Rpu,Xpu,Xmpu)
