//Problem 10.02: A moving-coil instrument having a resistance of 10 ohms, gives a f.s.d. when the current is 8 mA. Calculate the value of the multiplier to be connected in series with the instrument so that it can be used as a voltmeter for measuring p.d.s. up to 100 V.

//initializing the variables:
V = 100; // in volts
I = 0.008; // in Amperes
ra = 10; // in ohms


//calculation:
Rm = (V/I) - ra

printf("\n\n Result \n\n")
printf("\n value of the multiplier to be connected in series = %.3Eohms\n", Rm)