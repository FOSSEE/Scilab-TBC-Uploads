
clear
//Given
p=2*10**-8// dipole moment coulomb-meter
m=9*10**9// constant
r=1.0// distance m

//Calculation
//
b=3*cos(60*3.14/180.0)**2+1
a=p*sqrt(b)
E=(m*a)/r**3// electric field intensity

//Result
printf("\n Magnitude of electric intensity is %0.1f  N/C",E)
