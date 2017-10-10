clear//

//Variables

Vs = 100          //Source Voltage (in volts)
I = 5             //Current entering the circuit (in Ampere)
IL = 5            //Current leaving the circuit (in Ampere)
R15 = 15           //Resistor of 15 ohm (in ohm)
V15 = 30          //Voltage across 15 ohm resistor (in ohm)

//Calculation

I1 = V15 / R15    //Current through 15 ohm resistor (in Ampere)
IA = I + I1       //Current entering junction A (in Ampere)
//Applying Kirchoff's current law
I2 = I + I1       //Current through 5 ohm resistor (in Ampere)
IB = I2           //Current entering juction B (in Ampere)
IR = IA - IL      //Current through R (in Ampere)
//Applying Kirchoff's voltage law
//(7 * 5) + (2 *R) - 100 + 30 =0
R = 35.0/2

//Result

printf("\n The value of R is  %0.3f  ohm.",R)
