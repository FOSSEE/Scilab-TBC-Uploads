//Problem 36.06: Determine the average power in a 20 # resistance if the current i flowing through it is of the form
// i = 12sinwt + 5sin(3wt) + 2sin(5wt) A

//initializing the variables:
A1 = 12; // in amperes
A3 = 5; // in amperes
A5 = 2; // in amperes
R = 20; // in ohms

//calculation:
//rms current
Irms = ((A1^2 + A3^2 + A5^2)/2)^0.5
//average power
P = R*Irms^2

printf("\n\n Result \n\n")
printf("\n average power %.0f W",P)