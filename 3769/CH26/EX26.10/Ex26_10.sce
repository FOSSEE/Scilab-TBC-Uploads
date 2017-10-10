clear
//Given
ni=1.5*10**16                   ///m**3
a=5*10**28
b=10.0**6

//Calculation
Ne=a/b
nh=ni**2/Ne

//Result
printf("\n Number of Electrons is %0.3f  /m**3",Ne)
printf("\n Number of holes is %0.3f  *10**9 /m**3",nh*10**-9)
