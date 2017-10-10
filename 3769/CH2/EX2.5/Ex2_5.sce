clear
//Given
m=9*10**9
r=0.707
q=5*10**-6

//Calculation
//
E=m*q/r**2                    //along AO
E2=m*q/r**2                   //along BO
E3=m*q/r**2                   //along OD
E11=E+E2
E12=E2+E3
I=(2*E11*r)*10**-4

//Result
printf("\n Electric field at the centre of the sphere is  %0.2f  *10**4 N/C",I)
