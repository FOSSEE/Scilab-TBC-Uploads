//Problem 18.02: Determine the common-mode gain of an op amp that has a differential voltage gain of 150E3 and a CMRR of 90 dB.

//initializing the variables:
Vg = 150E3; // differential voltage gain 
CMRR = 90; // in dB

//calculation:
CMG = Vg/(10^(CMRR/20))

printf("\n\n Result \n\n")
printf("\n common-mode gain is %.2f",CMG)