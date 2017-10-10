clear
//Given
n=50
r=0.2                            //m
I=12                             //A
u=4*%pi*10**-7
//Calculation
B=(u*n*I)/(2.0*r)
M=n*I*%pi*r**2

//Result
printf("\n (i) Magnetic field at the centre of the coil is %0.3f  *10**-3 T",B*10**3)
printf("\n (ii) Magnetic moment is %0.1f  Am**2",M)
