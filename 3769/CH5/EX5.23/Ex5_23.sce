clear
//Given
A=15*10**-4                         //m**2
a=7.6*10**-8                                // ohm m
l=2000                              //m
b=0.005                          //degree/C

//Calculation
R0=a*l/A
R50=R0*(1+(b*50))

//Result
printf("\n The value of resistance is  %0.3f  ohm",R50)
