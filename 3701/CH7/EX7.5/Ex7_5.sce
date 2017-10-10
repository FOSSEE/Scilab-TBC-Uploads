////Given
m=10.0*10**-3                                            //kgram
l= 10.0*10**-2                                           //Length in m
h=1.054*10**-34
n1=1
n2=2 
n3=3

//Calculation
E1=(((3.14*h*n1)**2)/(2.0*m*(l**2)))/(1.6*10**-19)
E2=(((3.14*h*n2)**2)/(2.0*m*(l**2)))/(1.6*10**-19)
E3=(((3.14*h*n3)**2)/(2.0*m*(l**2)))/(1.6*10**-19)

//Result
printf("\n energies are  %e ev ,%e ev, %e ev",E1,E2,E3)
printf("\n these energies are extremely small and close together and hence cant be measured")
printf("\nthe answers vary due to round off error")

