clear
//Given
n=100
I=5                          //A
r=0.1                        //m
x=0.05
u=4*3.14*10**-7                     //T/A m

//Calculation
B=u*n*I/(2*r)
B1=(u*n*I*r**2)/(2.0*(r**2+x**2)**1.5)

//Result
printf("\n (i) Magnetic field at the centre of the coil is %0.3f  *10**-3 T",B*10**3)
printf("\n (ii) The magnetic field at the point on the axis of the coil is %0.2f  *10**-3 T",B1*10**3)
