clc
//
//
//

//Variable declaration
mu0=4*3.14*10**-7
mur=1
Er=2
E0=8.86*10**-12
E01=5
c=3*10**8

//Calculations
Z=sqrt((mu0*mur)/(E0*Er))
H0=(E01/Z)*10
v=((c)/sqrt(mur*Er))*10**-8

//Result
printf("\n The Impedence of the Medium is %3.1f ",Z)

printf("\n The Peak Magnetic Field Intensity is %1.3f A/m",H0)
printf("\n The Velocity of the wave is %1.2f *10**8 m/s",v)
