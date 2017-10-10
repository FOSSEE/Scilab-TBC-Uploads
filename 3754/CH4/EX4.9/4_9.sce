clear//

//Variables

V = 10.0                 //Voltage (in volts)
R1 = 10**6               //Resistance (in ohm)
R2 = 10 * 10**3          //Resistance (in ohm)

//Case (a):

//Calculation

RT = R1 + R2             //Total Resistance (in ohm)
I = V / RT               //Current (in Ampere)

//Result

printf("\n Current through the circuit is  %0.3f  A.",I)

//Case (b):

//Calculation

RT = R1                  //Total Resistance (in ohm)
I = V / RT               //Current (in Ampere)

//Result

printf("\n Current through circuit when R2 is shortened is  %0.3f  A.",I)
