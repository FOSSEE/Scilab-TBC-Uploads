clear//

//Variables

IS = 30.0                //Current (in milli-Ampere)
RS = 15.0                //Source resistance (in kilo-ohm)

//Calculation

RL = RS / 20.0           //Load Resistance (in kilo-ohm) 
IL = IS * RS/(RL +RS)    //Load Current (in Ampere)


//Result

printf("\n Largest value of load resistance to provide constant current is  %0.3f  ohm.",RL*10**3)
printf("\n Variation of current from the short-cicuit current is  %0.4f .",(IS-IL)/IS)
