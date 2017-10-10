clear
//Given
n=100
l=3.2 
r=0.1

//Calculation
//
u=4*%pi*10**-7
B=(u*n*l)/(2.0*r)
M=n*l*%pi*r**2
t=M*B*sin(0)
t1=(M*B*sin(90*3.14/180.0))*10**3
w=sqrt((2*M*B*10**3)/r)

//Result
printf("\n (a) Field at the centre of the coil is %0.0f  *10**-3 T",B*10**3)
printf("\n (b) Magnetic moment of the coil is %0.0f  Am**2",M)
printf("\n  Magnitude of the torque on the coil in the final position is %0.0f  Nm",t1)
printf("\n (d) Angular speed acquired by the coil is %0.0f  rad/s",w)
