//Problem 44.18: The standing-wave ratio on a mismatched line is calculated as 1.60. If the incident power arriving at the termination is 200 mW, determine the value of the reflected power.

//initializing the variables:
s = 1.6;
Pi = 0.2; // in Watts

//calculation:
//reflected power, Pr
Pr = Pi*((s - 1)/(s + 1))^2

printf("\n\n Result \n\n")
printf("\n reflected power, Pr is %.5f W",Pr)
