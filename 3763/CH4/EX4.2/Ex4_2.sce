clear
//
//
//

//Variable declaration
m=9.1*10**-31     //mass(kg)
nz=1
ny=1
nx=1
n=6
a=1     //edge(m)
h=6.63*10**-34     //planck's constant

//Calculation
E1=h**2*(nx**2+ny**2+nz**2)/(8*m*a**2)
E2=h**2*n/(8*m*a**2)
E=E2-E1               //energy difference(J)

//Result
printf("\n energy difference is %0.2f  *10**-37 J",E*10**37)
