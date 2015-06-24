//chapter-8,Example8_1,pg 234

fr=400*10^3//resonance frequency

C=400*10^-12//tuned capacitance

R=10//resistance of coil

n=40//Cp=nC

Cp=n*(100/400)*10^-12//interwinding capacitance

L=(1/(4*(%pi^2)*(fr^2)*(C+Cp)))//inductance of coil

Q=2*%pi*fr*(L/R)//observed Q-factor

printf("observed Q-factor\n")

printf("Q=%.2f ",Q)