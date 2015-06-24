//Problem 20.25: A single-phase auto transformer has a voltage ratio 320 V:250 V and supplies a load of 20 kVA at 250 V. Assuming an ideal transformer, determine the current in each section of the winding.

//initializing the variables:
V1 = 320; // in Volts
V2 = 250; // in Volts
S = 20000; // in VA

//calculation:
//Rating = 20 kVA = V1*I1 = V2*I2
//Hence primary current, I1
I1 = S/V1
//secondary current, I2
I2 = S/V2
//Hence current in common part of the winding
I = I2 - I1

printf("\n\n Result \n\n")
printf("\n current in common part of the winding is %.1f A", I)
printf("\n primary current and secondary current are %.1f A and %.0f A respectively",I1, I2)