clear//

//Variables

V = 6                 //Voltage (in volts)
R1 = 1                //Resistance (in ohm)
R2 = 2                //Resistance (in ohm)
R3 = 3                //Resistance (in ohm)

//Case (a):

//Calculation

RT = R1 + R2 + R3     //Equivalent Resistance (in ohm)
I = V / RT            //Current (in Ampere)
P = I**2 * RT         //Power dissipated (in watt)

//Result

printf("\n Power dissipated in the entire circuit is %0.3f  W.",P)

//Case (b):

//Calculation

RT = R1 + R2          //Equivalent Resistance (in ohm)
I = V / RT            //Current (in Ampere)
P = I**2 * RT         //Power dissipated (in watt)

//Result

printf("\n Power dissipated in the circuit when R2 is shortened is %0.3f  W.",P)

//Case (c):

//Calculation

R = R1                //Resistance (in ohm)
I = V / R             //Current (in Ampere)
P = I**2 * R          //Power dissipated (in watt)

printf("\n Power dissipated in the circuit when R3 and R2 is shortened is %0.3f  W.",P)
