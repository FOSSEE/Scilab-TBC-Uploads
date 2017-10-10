clear
//Initialisation
OG=2*10**5                          //Open Loop Gain
CG=20                               //Closed Loop Gain
OR1=75                              //Output Resistance
IR1=2*10**6                         //Input Resistance
R1=20*10**3                         //Resistnce in Ohm
R2=10**3                            //Resistnce in Ohm

//Calculation
AB=OG*CG**-1                        //factor (1+AB)
OR2=OR1*AB**-1                          //Output Resistance
//the input is connected to a virtual earth point by the resistance R2, 
//so the input resistance is equal to R 2 ,
IR2=R2                              //Input Resistance

//Result
printf("\n Output Resistance = %.1f mOhm\n",OR2*1000)

printf("\n Input Resistance = %d KOhm",IR2*10**-3)

