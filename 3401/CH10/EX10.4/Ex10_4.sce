clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
DE=10//cm^2/s
DB=25//cm^2/s
xB=0.70*10^-6//m
xE=0.50*10^-6//m
NE=1*10^18//cm^-3
NB=1*10^16//cm^-3
VBE=0.65//V
tauB0=5*10^-7//s
tauE0=1*10^-7//s
Jr0=5*10^-8//A/cm62
pE0=2.25*10^2//cm^-3
nB0=2.25*10^4//cm^-3
LE=10^-3//cm
LB=3.54*10^-3//cm

gamma1=1/(1+(pE0*DE*LB*tanh(0.0198))/(nB0*DB*LE*tanh(0.050)))
disp(gamma1,"gamma1 is=")
alphatau=1/cosh(xB/LB)
disp(alphatau,"alphatau is=")
Js0=(e*DB*nB0)/(LB*tanh(xB/LB))
disp(Js0,"Js0 is A/cm^2")
delta=1/(1+(Jr0/Js0)*exp(-VBE/(2*0.0259)))
disp(delta,"delta is=")
a=gamma1*alphatau*delta
disp(a,"a is=")
beta1=a/(1-a)
disp(beta1,"beta1 is=")//          ans varies cause of long no.of digits
