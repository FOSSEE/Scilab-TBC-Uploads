//Problem 20.03: An ideal transformer has a turns ratio of 8:1 and the primary current is 3 A when it is supplied at 240 V. Calculate the secondary voltage and current.

//initializing the variables:
tr = 8/1;  // turns ratio
I1 = 3; // in Amperes
V1 = 240; // in Volts

//calculation:
//A turns ratio of 8:1 means that the transformer has 28 turns on the primary for every 1turns on the secondary
V2 = V1/tr
//secondary current
I2 = I1*tr

printf("\n\n Result \n\n")
printf("\n secondary voltage is %.0f V and secondary current is %.0f A",V2, I2)