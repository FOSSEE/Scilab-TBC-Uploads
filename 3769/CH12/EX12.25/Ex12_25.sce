clear
//Given
I=2.0
a1=20*10**-2
x=0.15
A2=0.3*10**-2

//Calculation
//
u=4*%pi*10**-7
B1=(u*I*a1**2)/(2.0*(a1**2+x**2)**1.5)
a=B1*%pi*A2**2
M=a/I

//Result
printf("\n (i) Flux linking the bigger loop is %0.1f  ",a*10**11)
printf("\n (ii) Mutual induction between the two loops is %0.2f  !0**-11 H",M*10**11)
