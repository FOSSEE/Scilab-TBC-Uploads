clear
//Given
l=7500*10**-10
d=1.0*10**-6
c=20

//Calculation
//
a=l/d
b=asin(a)*180/3.14
A=2*b
x=c*tan(a*3.14/180.0)
w=2*x

//Result
printf("\n (i) Width of central maximum is %0.0f  Degree",A)
printf("\n (ii) Width of central maximum is %0.0f  cm",w*10**2)
