//Problem 10.20: The current I flowing in a resistor R is measured by a 0–10 A ammeter which gives an indication of 6.25 A. The voltage V across the resistor is measured by a 0–50 V voltmeter, which gives an indication of 36.5 V. Determine the resistance of the resistor, and its accuracy of measurement if both instruments have a limit of error of 2% of f.s.d. Neglect any loading effects of the instruments.

//initializing the variables:
I = 6.25; // in Amperes
Im = 10; // max in Amperes
V = 36.5; // in volts
Vm = 50; // max in volts
e = 2; // in %

//calculation:
R = V/I
Ve = e*Vm/100 
Ve1 = Ve*100/V  // in  %
Ie = e*Im/100
Ie1 = Ie*100/I  // in %
em = Ve1 + Ie1
Re = em*R/100

printf("\n\n Result \n\n") 
printf("\n Resistance R = %.2f ohms(+-)%.2f ohms\n",R,Re)