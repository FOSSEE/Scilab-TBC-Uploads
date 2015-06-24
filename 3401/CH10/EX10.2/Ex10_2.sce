clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
DB=10//cm^2/s
tauB0=10^-7//sec
alphatau=0.9967
//(xB/LB)=z
z=acosh(1/alphatau)
disp(z,"xB/LB is=")

LB=sqrt(DB*tauB0)
disp(LB,"LB in cm is=")
xB=z*10^-4
disp(xB,"xB in meter is=")
