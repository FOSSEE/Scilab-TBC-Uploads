clear
//Given
l=10**-6                     //m
d=7.9                       //g
a=6.023*10**23
n=55.0
M1=9.27*10**-24

//Calculation
V=l**2
M=V*d
N=(a*M)/n
Mmax=N*M1
Imax=Mmax/V*10**-4

//Result
printf("\n Number of iron atom is %0.2f  *10**10 atoms",N*10**-10)
printf("\n Magnetisation of the dipole is %0.0f  *10**5 A/m",Imax*10**5)
printf("\n Maximum possible dipole moment is %0.0f *10**-13 A m**2",Mmax*10**13)
