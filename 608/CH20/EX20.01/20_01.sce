//Problem 20.01: A transformer has 500 primary turns and 3000 secondary turns. If the primary voltage is 240 V, determine the secondary voltage, assuming an ideal transformer.

//initializing the variables:
N1 = 500; // primary turns
N2 = 3000; // secondary turns
V1 = 240; // in Volts

//calculation:
//For an ideal transformer, voltage ratio = turns ratio
V2 = V1*N2/N1

printf("\n\n Result \n\n")
printf("\n secondary voltage %.2E V",V2)