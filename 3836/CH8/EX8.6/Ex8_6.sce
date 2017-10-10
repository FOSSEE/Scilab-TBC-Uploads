clear
//Initialisation
OG=2*10**5                          //Open Loop Gain
CG=1                              //Closed Loop Gain
OR1=75                              //Output Resistance
IR1=2*10**6                          //Input Resistance

//Calculation
AB=OG*CG**-1                        //factor (1+AB)
OR2=OR1*AB**-1                      //Output Resistance
IR2=IR1*AB                          //Input Resistance

//Result
printf("\n Output Resistance = %d uOhm\n",OR2*10**6)

printf("\n Input Resistance = %d GOhm",IR2*10**-9)

