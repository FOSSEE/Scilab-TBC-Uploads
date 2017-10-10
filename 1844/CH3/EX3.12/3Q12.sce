clc
L=20 // in m
a = 6.2*10^(-6)//in ()1 degree F)^-1
Tm=80
To=55
Ct= L * a * (Tm-To)
P=16
Po=10
W=0.8 // in kg
E=2.109*10^6 // in kg/cm^2
A= W/(20*100*7.86*10^(-3))
Cp= (P-Po)*20/(A*E)
Cs= L*(W^2)/(24*P^2)
Tc=Ct+Cp-Cs
printf('Total correction = %f m',Tc)
