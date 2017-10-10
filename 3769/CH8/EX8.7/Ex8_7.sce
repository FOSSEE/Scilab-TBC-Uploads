clear
//Given
I=5               //A
l=0.01              //m
a=45              //degree
r=2               //m
u=10**-7

//Calculation
//
B=(u*I*l*sin(a)*180/3.14)/r**2

//Result
printf("\n Magnetic field is %0.1f *10**-10 T",B*10**8)
