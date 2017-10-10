clear
//Given
B=0.8
q=3.2*10**-19                //C
d=1.2
m=4*1.66*10**-27               //Kg
a=1.60*10**-19

//Calculation
//
r=d/2.0
K=(B**2*q**2*r**2)/(2.0*m*a)
v=(q*B*r)/m
f=(q*B)/(2.0*%pi*m)

//Result
printf("\n Frequency of alternating voltage is %0.2f  *10**7 HZ",f*10**-7)
