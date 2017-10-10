clear//

//Variables

I = 250 * 10**-3            //Current (in Ampere)
R = 1.5 * 10**3             //Resistance (in ohm)

//Calculation

Vs = I * R                  //Source voltage (in volts)
I1 = 0.75 * I               //New current (in Ampere)
R1 = Vs / I1                //New Resistance (in ohm)
R2 = R1 - R                 //Resistance to be added (in ohm)

//Result

printf("\n  %0.3f ohm Resistance must be added in order to accomplish the reduction in current.",R2)
