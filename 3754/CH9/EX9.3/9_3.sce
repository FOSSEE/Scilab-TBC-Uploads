clear//

//Case a.1:

//Variables
VT = 1.25
VS = 6.0                    //Source Voltage (in volts)
RS = 2.0                    //Resistance (in ohm)
//When RL is 2 ohm
RL = 2.0                    //Load Resistance (in ohm) 

//Calculation

RT = RS + RL                //Total Resistance (in ohm)
I = VS / RT                 //Current in the Circuit (in Ampere)
VT1 = I * RL                //Terminal Voltage (in volts)

//Result

printf("\n Terminal voltage when RL is 2 ohm :  %0.3f  V.",VT1)

//Case a.2:

//Variables

//When RL is 20 ohm
RL = 20.0                   //Load Resistance (in ohm)

//Calculation

RT = RS + RL                //Total Resistance (in ohm)
I = VS / RT                 //Current in the Circuit (in Ampere)
VT2 = I * RL                //Terminal Voltage (in volts)

//Result

printf("\n Terminal voltage when RL is 20 ohm :  %0.2f  V.",VT)
printf("\n Variation in terminal voltage is  %0.3f  V.",(VT2-VT1)/VT2)

//Case b.1:

//Variables

RS = 100.0                   //Resistance (in ohm)
//When RL is 10 kilo-ohm
RL = 10.0 * 10**3            //Load Resistance (in ohm) 

//Calculation

RT = RS + RL                 //Total Resistance (in ohm)
I = VS / RT                  //Current in the circuit (in Ampere)
VT = I * RL                  //Terminal Voltage (in volts)

//Result

printf("\n Terminal voltage when RL is 100 kilo-ohm is:  %0.2f  V.",VT)

//Case b.2:

//Variables

//When RL is 100 kilo-ohm
RL = 100.0 * 10**3            //Load Resistance (in ohm) 

//Calculation

RT = RS + RL                  //Total Resistance (in ohm)
I = VS / RT                   //Current in the circuit (in Ampere)
VT1 = I * RL                  //Terminal Voltage (in volts)

//Result

printf("\n Terminal voltage when RL is 100 kilo-ohm is : %0.3f  V.",VT1)
printf("\n Variation in terminal voltage is  %0.3f  V.",(VT1-VT)/VT1)
