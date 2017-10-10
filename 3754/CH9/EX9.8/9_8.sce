clear//

//Variables

IS =1.5                 //Source current (in milli-Ampere)
RS = 2                  //Source resistance (in kilo-ohm)

//Calculation

RL = 10*40/(10+40)      //Load Reistance (in kilo-ohm)
IL = IS * RS/(RL +RS)   //Load current (in milli-Ampere)
IL2 = IL * 10/(10 +40)  //Current through part 2 (in milli-Ampere)
VS = IS * RS            //Souce voltage (in volts)

//Result

printf("\n current through 40 kilo-ohm resistor is  %0.3f  mA.",IL2)
printf("\n Equivalent volage source is  %0.3f  V.",VS)
