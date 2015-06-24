//chapter 33
//example7
clc
//given
f0=12*10^6 //cyclotron frequency in cycles/sec
r=21//dee radius in inches
R=r*0.0254 //dee radius in meter
q=1.6*10^-19 //charge in coul
m=3.3*10^-27 //in kg
//(A)
B=2*%pi*f0*m/q
disp(B,"(A)  Magnetic induction needed to accelerate deuterons in wb/m2 is")
//(B)
K=((q^2*B^2*R^2)/(2*m))
disp(K,"(B)  Deuteron energy in joule is")
K1=K*(1/(1.6*10^-19))
disp(K1,"   Deuteron energy in ev is")
