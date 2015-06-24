//Problem 3.06:

//initializing the variables:
qs = 30000; // in scfm at 60 °F
P = 1; // in atm
Ts = 60; // in °F
Ta = 1100; // in °F

//calculation:
qa = qs*(Ta + 460)/(Ts + 460)

printf("\n\nResult\n\n")
printf("\n flow rate in actual cubic feet per minute is %.0f acfm",qa)