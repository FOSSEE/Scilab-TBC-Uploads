clear
//Given
c=4.2                           //KJ/Kg/C
m=0.2                           //Kg
a=90
b=20
t=30
V=230

//calculation
d=a-b
H=c*m*d
P=H/t
I=P/V

//Result
printf("\n The value of current is %0.2f  A",I*10**3)
