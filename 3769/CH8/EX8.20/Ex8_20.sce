clear
//Given
e=1.6*10**-19
f=6.8*10**15
r=0.51*10**-10
u=4*3.14*10**-7                     //T/A m

//Calculation
//
I=e*f
B=(u*I)/(2*r)
M=1*I*%pi*r**2

//Result
printf("\n The effective dipole moment is %0.0f *10**-24 Am**2",M*10**24)
