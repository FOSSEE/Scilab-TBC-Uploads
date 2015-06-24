P=15E3
a=3000/250

/////OC Parameters
Poc=105
Ioc=0.62
Voc=250

/////SC Parameters
Psc=360
Isc=5.2
Vsc=157


Y0=Ioc/Voc
Gi=Poc/Voc/Voc
Bm=sqrt(Y0*Y0-Gi*Gi)

Z=Vsc/Isc
R=Psc/Isc/Isc
X=sqrt(Z*Z-R*R)

///////////Referred to HV side
GiHV=Gi/a/a
disp(GiHV)
BmHV=Bm/a/a
disp(BmHV)
disp(R)
disp(X)

//////////Per unit
ZB=3.12/5.2
GiPU=Gi*ZB
BmPU=Y0*ZB
RPU=R/ZB/1000
XPU=X/ZB/1000
disp(GiPU)
disp(BmPU)
disp(RPU)
disp(XPU)


pf=0.8
theta=acos(pf)
V2=250*a
I=P/V2
Vd=I*(R*cos(theta)-X*sin(theta))
VR=-Vd/V2*100
disp(VR)
Pi=105
Pc=I*I*R
Pl=Pi+Pc
P0=P*pf
effi=P0/(Pl+P0)*100

pf2=cos(atan(R/X))
disp("leading", pf2)


IPU=sqrt(Pi/P/RPU)
effi_max=IPU
disp(effi_max)
