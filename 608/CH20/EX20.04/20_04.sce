//Problem 20.04: An ideal transformer, connected to a 240 V mains, supplies a 12 V, 150 W lamp. Calculate the transformer turns ratio and the current taken from the supply.

//initializing the variables:
V1 = 240; // in Volts
V2 = 12; // in Volts
P = 150; // in Watts

//calculation:
I2 = P/V2
//A turns ratio = Vp/Vs
tr = V1/V2 // turn ratio
//  V1/V2 = I2/I1
//current taken from the supply
I1 = I2*V2/V1

printf("\n\n Result \n\n")
printf("\n turn ratio is %.0f and current taken from the supply is %.3f A",tr, I1)