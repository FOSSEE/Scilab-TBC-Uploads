//Caption:Find (a)Input power(in KVA) (b)Power factor
//Exa:15.6
clc;
clear;
close;
V=440//Voltage of circuit(in volts)
f=50//Frequency(in hertz)
I=30//Current taken by circuit(in A)
pf=0.8//Power factor
Pl=10//Load supplied(in KW)
e=0.85//Efficiency
Pi=Pl/e
Ii=Pi*1000/(sqrt(3)*V)
Ia=I*pf
Ir=I*sind(acosd(pf))
i=Ii+Ia
It=sqrt((Ii^2)+(Ir^2))
pfm=Ii/It
Wi=sqrt(3)*V*It/(1000)
disp(Wi,'(a)Input power(in KVA)=')
disp(pfm,'(b)Power factor=')