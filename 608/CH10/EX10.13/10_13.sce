//Problem 10.13: The current input to a system is 5 mA and the current output is 20 mA. Find the decibel current ratio assuming the input and load resistances of the system are equal.

//initializing the variables:
I2 = 0.020; // in ampere
I1 = 0.005; // in ampere

//calculation:
X = 20*log10(I2/I1)

printf("\n\n Result \n\n")
printf("\n decibel current ratio = %.0f dB\n",X)