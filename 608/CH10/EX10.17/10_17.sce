//Problem 10.17: In a Wheatstone bridge ABCD, a galvanometer is connected between A and C, and a battery between B and D. A resistor of unknown value is connected between A and B. When the bridge is balanced, the resistance between B and C is 100 ohms, that between C and D is 10 ohms and that between D and A is 400 ohms. calculate the value of the unknown resistance.

//initializing the variables:
R2 = 100; // in ohms
R3 = 400; // in ohms
R4 = 10; // in ohms

//calculation:
R1 = R2*R3/R4

printf("\n\n Result \n\n") 
printf("\n unknown resistance, R1 = %.0f Ohms\n",R1)