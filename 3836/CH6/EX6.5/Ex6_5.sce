clear
//Initialisation
Vi=1.82                     //Input Voltage of Amplifier
Ri=1000                    //Input Resistance of amplifier in Ohm
Vo=15.2                     //Output Voltage of Amplifier
Rl=50                     //Load Resistance


//Calculation
Pi=(Vi**2)*Ri**-1                //Input Power in Watt
Po=(Vo**2)*Rl**-1                //Output Power in Watt
Ap=Po/Pi                          //Power Gain
 

//Result
printf("\n Power Gain, Ap = %d",Ap)

