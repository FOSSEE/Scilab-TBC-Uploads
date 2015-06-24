P=15E3
v1=2200
v2=220
a=v1/v2

/////OC Parameters
Poc=185
Ioc=2.72
Voc=220

/////SC Parameters
Psc=197
Isc=6.3
Vsc=112

Pi=Poc
disp(Pi)

IHVfl=P/v1
Pcfl=IHVfl*IHVfl/Isc/Isc*Psc
disp(Pcfl)

pf=0.85
Po=P*pf
Pl=Pi+Pcfl
effi=Po/(Po+Pl)*100
disp(effi)

Z=Vsc/Isc
R=Psc/Isc/Isc
X=sqrt(Z*Z-R*R)
pf=0.8
theta=acos(pf)
Vd1=IHVfl*(R*cos(theta)+X*sin(theta))
Vd2=IHVfl*(R*cos(theta)-X*sin(theta))
VR1=Vd1/v1*100
VR2=Vd2/v1*100
disp(VR1, VR2)
