clear
//Given
I0=120                     //A
a=360.0
b=96
c=120.0

//Calculation
//
t=1/a
I=I0*sin(%pi/3.0)
a1=b/c
a2=asin(a1)
t=a2/(c*%pi)

//Result
printf("\n (i) Instantaneous value after 1/360 second is %0.2f  A",I)
printf("\n (ii) Time taken to reach 96 A for the first time is %0.5f  S",t)
