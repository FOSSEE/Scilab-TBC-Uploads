clear
//Initialisation
Av=10                     //Voltage gain
Vi=2                      //Input Voltage of Amplifier
Rl=50                     //Load Resistance
Ro=0                    //Output Resistance of amplifier in Ohm


//Calculation
Vo=Av*Vi*Rl/(Ro+Rl)               //Output Voltage of Amplifier

//Result
printf("\n Ouput voltage of and amplifier = %.1f V",Vo)

