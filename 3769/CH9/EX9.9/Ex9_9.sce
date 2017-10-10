clear
//Given
q=3.2*10**-19
B=1.2
r=0.45
m=6.8*10**-27

//Calculation
//
v=(q*B*r)/m
f=v/(2.0*%pi*r)
K=(0.5*m*v**2)/(1.6*10**-19)
V=K/2.0

//Result
printf("\n Required potentila difference is %0.0f  *10**6 V",V*10**-6)
