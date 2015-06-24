clc
//Chapter8
//Example8.1, page no 313
//Given
//a
L=1.2*10^-3//distributed inductance
C=0.05*10^-6//distributed capacitance
Zo=sqrt(L/C)//Characteristic Impedance
mprintf('The characteristic Impedance is Zo= %f ohm',Zo)
Wo=1// Assumedfor ease of calculation 
G=%i*sqrt(L*C)*Wo
mprintf('\nPropagation constant is Gama= j%3.2ew',G*-%i)
//b
//i
lambda=0.4e3//wavelength=Line length
c=3e8
f=c/lambda
//ii
L=L'*0.4
C=C'*0.4
v=1/(sqrt(L*C))
mprintf('\n The freq at which the line length is equal to wavelength is: %d KHz\n The velocity of propagation is: %f km/sec',f*1e-3,v*1e-3)
