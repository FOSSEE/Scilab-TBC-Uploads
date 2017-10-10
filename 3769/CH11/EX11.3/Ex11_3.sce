clear
//Given
r1=11
r2=12
B=2.5                     //T
a=3000
I=0.70                     //A

//Calculation
//
r=((r1+r2)/2.0)*10**-2
n=a/(2*%pi*r)
ur=B*2*%pi*r/(4*%pi*10**-7*a*I)

//Result
printf("\n Relative permeability is %0.1f  ",ur)
