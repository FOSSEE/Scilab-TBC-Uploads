//Problem 20.02: An ideal transformer with a turns ratio of 2:7 is fed from a 240 V supply. Determine its output voltage.

//initializing the variables:
tr = 2/7;  // turns ratio
V1 = 240; // in Volts

//calculation:
//A turns ratio of 2:7 means that the transformer has 2 turns on the primary for every 7 turns on the secondary
V2 = V1/tr

printf("\n\n Result \n\n")
printf("\n output voltage %.0f V",V2)