clear
//Given
D=0.13*10**-2
R=3.4                       //ohms
l=10.0

//Calculation
//
A=(%pi/4.0)*D**2
a=R*A/l
b=1/a

//Result
printf("\n Conductivity of a material is  %0.1f  *10**6 S/m",b*10**-6)
