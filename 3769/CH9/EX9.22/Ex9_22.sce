clear
//Given
r=0.04                   //m
I1=20
I2=16
l=0.15
r1=0.1

//Calculation
//
u=4*%pi*10**-7
F1=(u*I1*I2*l)/(2.0*%pi*r)
F2=(u*I1*I2*l)/(2.0*%pi*r1)
F=F1-F2

//Result
printf("\n Net force on the loop is %0.3f  *10**-4 N", F*10**4)
