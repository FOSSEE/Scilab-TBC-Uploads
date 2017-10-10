clear
//Given
v=4*10**6
r=0.5*10**-10
e=1.6*10**-19
t=1
u=4*3.14*10**-7                     //T/A m

//Calculation
//
f=v/(2.0*%pi*r)
I=f*e/t
B=u*I/(2*r)

//Result
printf("\n Magnetic field produced by the electrons is %0.1f  T",B)
