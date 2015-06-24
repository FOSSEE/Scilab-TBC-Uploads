clc
//Chapter8
//Example8.15, page no 348
//Given
l=100// Tx-line length
ZR=200//Terminal resistance
Zo=600//Characteristic impedance
a=0.01//attenuation constant
Beta=0.03//phase constant
d=0//reflection coeff at load is Zero
Gamma=a+%i*Beta//propagation constant
Kd=((ZR-Zo)/(ZR+Zo))*%e^(-2*Gamma*d)//reflection coeff at point D d km from load
[Kdr,Kdi]=polar(Kd)
d1=100// distance
Ks=((ZR-Zo)/(ZR+Zo))*%e^(-2*Gamma*d1)//reflection coeff at the sending end
[Ksr,Ksi]=polar(Ks)
Zin=Zo*(((ZR*cosh(Gamma*l))+(Zo*sinh(Gamma*l)))/((Zo*cosh(Gamma*l))+(ZR*sinh(Gamma*l))))//Input impedance
[Zinr,Zini]=polar(Zin)
mprintf('The input impedance is %f /_%fdeg\nReflection Coeff is %f /_%fdeg',Zinr,Zini*180/%pi,Ksr,Ksi*180/%pi)

// Note :  There are some calculation errors in the solution presented in the book
