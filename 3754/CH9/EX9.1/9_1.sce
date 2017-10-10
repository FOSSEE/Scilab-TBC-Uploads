clear//

//Variables

V = 1.5                     //Source Voltage (in volts)
RS = 0.2                    //Resistance (in ohm)
RL = 1                      //Load Resistance (in ohm)

//Calculation

RT = RS + RL                //Total Resistance (in ohm)
I = V / RT                  //Current (in Ampere)
VAB = I * RL                //Voltage drop across AB (in volts)
VR = V - VAB                //Voltage drop due to internal resistance (in volts)

//Result

printf("\n Voltage drop across internal resistance is  %0.3f  volts.",VR)
