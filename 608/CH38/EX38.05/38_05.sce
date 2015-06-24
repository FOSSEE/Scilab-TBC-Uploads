//Problem 38.05: The eddy current loss in a particular magnetic circuit is 10 W/m3. If the frequency of operation is reduced from 50 Hz to 30 Hz with the flux density remaining unchanged, determine the new value of eddy current loss per cubic metre.

//initializing the variables:
Pe1 = 10; // in W/m3
f1 = 50; // in Hz
f2 = 30; // in Hz

//calculation: 
//When the eddy current loss is 10 W/m3, frequency f is 50 Hz.
//constant k
k = Pe1/(f1^2)
//When the frequency is 30 Hz, eddy current loss,
Pe2 = k*(f2^2)

printf("\n\n Result \n\n")
printf("\neddy current loss per cubic metre is %.1f W/m3",Pe2)