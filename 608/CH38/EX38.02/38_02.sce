//Problem 38.02: If in problem 38.01, the maximum flux density is 1.5 T at a frequency of 50 Hz, determine the hysteresis loss per m3 for a maximum flux density of 1.1 T and frequency of 25 Hz. Assume the Steinmetz index to be 1.6

//initializing the variables:
n = 1.6; // the Steinmetz index
f1 = 50; // in Hz
f2 = 25; // in Hz
Bm1 = 1.5; // in Tesla
Bm2 = 1.1; // in Tesla
Ph1 = 62500; // in W/m3
v = 1;

//calculation: 
//hysteresis loss Ph = kh*v*f*(Bm)^n
kh = Ph1/(v*f1*(Bm1)^n)
//When f = 25 Hz and Bm = 1.1 T,
Ph2 = kh*v*f2*(Bm2)^n

printf("\n\n Result \n\n")
printf("\n hysteresis loss When f = 25 Hz and Bm = 1.1 T, is = %.0f W/m3",Ph2)