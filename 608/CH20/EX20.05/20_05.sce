//Problem 20.05: A 5 kVA single-phase transformer has a turns ratio of 10:1 and is fed from a 2.5 kV supply. Neglecting losses, determine (a) the full-load secondary current, (b) the minimum load resistance which can be connected across the secondary winding to give full load kVA, (c) the primary current at full load kVA.

//initializing the variables:
S = 5000; // in VA
tr = 10; // turn ratio
V1 = 2500; // in Volts

//calculation:
//A turns ratio of 8:1 means that the transformer has 28 turns on the primary for every 1turns on the secondary
V2 = V1/tr
//transformer rating in volt-amperes = Vs*Is
I2 = S/V2
//Minimum value of load resistance
RL = V2/I2
//  tr = I2/I1
I1 = I2/tr

printf("\n\n Result \n\n")
printf("\n (a)full-load secondary current is %.0f A",I2)
printf("\n (b)minimum load resistance is %.1f ohm",RL)
printf("\n (c) primary current is %.0f A",I1)