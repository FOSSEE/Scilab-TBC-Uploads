clear
//Given
n=1.0
n1=2.0
n2=3.0
a=0.53*10**-10
Z=3.0

//Calculation
r1=(a*n)/Z
r2=(a*n1**2)/Z
r3=(a*n2**2)/Z
E1=(-13.6*Z**2)/n**2
E2=(-13.6*Z**2)/n1**2
E3=(-13.6*Z**2)/n2**2
E=E3-E1

//Result
printf("\n (i) Radii of three lowest allowed orbits is %0.2f A %0.2f A and %0.3f A",r1*10**10,r2*10**10,r3*10**10)
printf("\n (ii) Energy of three lowest allowed orbits is %0.3f ev %0.3f ev and %0.3f ev",E1,E2,E3)
printf("\n Energy of the photon is %0.3f  ev",E)
