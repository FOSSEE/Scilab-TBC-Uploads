////Given
Z=1.0
n=1.0
Z1=4                                      //for Be++
n1=2.0

//Calculation
//
n1=sqrt((n**2/Z)*Z1)
r=(Z1**2/n1**2)/(Z**2/n**2)               //Ratio of two energies

//Result
printf("\n nBe++=  %0.3f ", n1)
printf("\n comparison is  %0.3f ",r)
