//Problem 10.16: The output voltage from an amplifier is 4 V. If the voltage gain is 27 dB, calculate the value of the input voltage assuming that the amplifier input resistance and load resistance are equal.

//initializing the variables:
X = 27; // Voltage gain in decibels
V2 = 4; // output voltage in Volts

//calculation:
V1 = V2/(10^(27/20))

printf("\n\n Result \n\n") 
printf("\n input Voltage V1 = %.3f V\n",V1)