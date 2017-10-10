clear//

//Variables

T1 = 800                                 //Temperature (in celsius degeree)
T2 = 2250                                //Temperature (in celsius degeree)
R20 = 3.49                               //Resistance at 20 degree celsius (in ohm)
alpha20 = 4.5 * 10**-3                   //Temperature coefficient at 20 degree celsius (in per degree Celsius)

//Calculation

R800 = R20 * (1 + alpha20*(T1 - 20))     //Resistance at 800 degree celsius (in ohm)
R2250 = R20 * (1 + alpha20*(T2-20))      //Resistance at 2250 degree celsius (in ohm)

//Result

printf("\n Resistance at 800 degree celsius is  %0.1f  ohm.\n\nResistance at 2250 degree celsius is %0.3f",R800,R2250)
