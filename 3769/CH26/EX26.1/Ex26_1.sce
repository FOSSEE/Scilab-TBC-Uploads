clear
//Given
a=0.47
ue=0.39                         //m**2/volt sec
uh=0.19                         //m**2/volt sec
e=1.6*10**-19

//Calculation
a1=1/a
ni=a1/(e*(ue+uh))

//Result
printf("\n Intrinsic carrier conceentration is %0.1f *10**19 /m**3",ni*10**-19)
