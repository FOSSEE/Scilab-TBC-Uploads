//Problem 10.01: A moving-coil instrument gives a f.s.d. when the current is 40 mA and its resistance is 25 ohms. Calculate the value of the shunt to be connected in parallel with the meter to enable it to be used as an ammeter for measuring currents up to 50 A.

//initializing the variables:
Ia = 0.040; // in Amperes
I = 50; // in Amperes
ra = 25; // in ohms


//calculation:
Is = I - Ia
V = Ia*ra
Rs = V/Is

printf("\n\n Result \n\n")
printf("\n  value of the shunt to be connected in parallel = %.3E ohms",Rs)