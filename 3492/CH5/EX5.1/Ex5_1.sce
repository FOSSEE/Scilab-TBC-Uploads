clc
//Chapter5
//Ex_1
//Given
e=1.6*10^-19 // in coulombs
h=6.6*10^-34 //in J s
m=9.1*10^-31 //in Kg
me=1.08*m
mh=0.56*m
T=300 //in Kelvin
Eg=1.10 // in eV
ue=1350//in cm2/V/s
uh=450//in cm2/V/s
k=1.38*10^-23 //m2 kg s-2 K-1
Nc=2*((2*%pi*me*k*T)/h^2)^(3/2) //in m^-3
Nc=Nc*10^-6 //in cm^-3
Nv=2*((2*%pi*mh*k*T)/h^2)^(3/2) //in m^-3
Nv=Nv*10^-6 //in cm^-3
ni=sqrt(Nc*Nv)*exp(-Eg*e/(2*k*T))
disp(ni,"Intrinsic concentration of Si in cm^-3 is")
sigma=e*ni*(ue+uh)
p=1/sigma
disp(p,"Intrinsic resistivity of Si in ohm cm is")
