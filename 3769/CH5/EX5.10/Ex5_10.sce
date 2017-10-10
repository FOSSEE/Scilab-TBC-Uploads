clear
//Given
r=0.12*10**-2                 //m
I=10
r1=0.08*10**-2                    //m
I=10                                  //A
e=1.6*10**-19                                  //C
n=8.4*10**28

//Calculation
//
A=%pi*(r**2)
J=I/A
A1=%pi*r1**2
Vd=I/(e*n*A1)

//Result
printf("\n (i) Current density in the alluminium wire is  %0.1f  *10**6 A/m**2",J*10**-6)
printf("\n (ii) Drift velocity of electrons in the copper wire is  %0.1f  *10**-4 m/S",Vd*10**4)
