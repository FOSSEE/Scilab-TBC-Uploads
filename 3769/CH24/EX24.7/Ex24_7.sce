clear
//Given
e=8.854*10**-12
h=6.62*10**-34
m=9*10**-31
e1=1.6*10**-19

//Calculation
//
r1=((e*h**2)/(%pi*m*e1**2))*10**10
v1=e1**2/(2*e*h)
n=2*r1

//Result
printf("\n Radius of first orbit is %0.2f  A",r1)
printf("\n Velocity of electron is %0.1f  *10**6 m/s",v1*10**-6)
printf("\n Size of hydrogen atom is %0.2f  A",n)
