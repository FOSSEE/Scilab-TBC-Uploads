//Problem 3.07:

//initializing the variables:
qs = 1000; // in acfm
A = 1; // in ft2
P = 1; // in atm
Ts = 70; // in °F
Ta = 300; // in °F

//calculation:
qa = qs*(Ta + 460)/(Ts + 460)
v = qa/P

printf("\n\nResult\n\n")
printf("\n velocity of the gas is %.0f ft/min",v)