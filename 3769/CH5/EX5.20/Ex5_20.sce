clear
//Given
R15=80                    //ohm
a=0.004

//Calculation
R0=R15/(1+15*a)
R50=R0*(1+a*50)

//Result
printf("\n The value of resistance at 50 degree C is  %0.2f  ohm",R50)
