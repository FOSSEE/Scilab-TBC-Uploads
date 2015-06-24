P=50E3
a=2200/220

/////OC Parameters
Poc=405
Ioc=5
Voc=220

/////SC Parameters
Psc=805
Isc=20.2
Vsc=95


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

////////////Referred to LV side
disp(Gi)
disp(Bm)
RLV=R/a/a
disp(RLV)
XLV=X/a/a
disp(XLV)


//////////Per unit
GiPU=GiHV/0.0103
BmPU=BmHV/0.0103
RPU=R/96.8
XPU=X/96.8
disp(GiPU)
disp(BmPU)
disp(RPU)
disp(XPU)
