clear
//Initialisation
OG=2*10**5                          //Open Loop Gain
CG=20                              //Closed Loop Gain
OR1=75                              //Output Resistance
IR1=2*10**6                          //Input Resistance

//Calculation
AB=OG*CG**-1                           //factor (1+AB)
OR2=OR1/AB                              //Output Resistance
IR2=IR1*AB                          //Input Resistance

//Result
printf("\n Output Resistance = %.1f mOhm\n",OR2*1000)

printf("\n Input Resistance = %d GOhm",IR2*10**-9)

