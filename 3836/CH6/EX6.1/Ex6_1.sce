clear
//Initialisation
Ri=1000                    //Input Resistance of amplifier in Ohm
Rs=100                    //Output Resistance of sensor in Ohm
Rl=50                     //Load Resistance
Ro=10                    //Output Resistance of amplifier in Ohm
Av=10                     //Voltage gain
Vs=2                       //Sensor voltage

//Calculation
Vi=Ri*Vs*(Rs+Ri)**-1               //Input Voltage of Amplifier
Vo=Av*Vi*Rl*(Ro+Rl)**-1               //Output Voltage of Amplifier

//Result
printf("\n Ouput voltage of and amplifier = %.1f V",Vo)

