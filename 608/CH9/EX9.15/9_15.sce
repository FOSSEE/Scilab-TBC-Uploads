//Problem 9.15: The mutual inductance between two coils is 18 mH. Calculate the steady rate of change of current in one coil to induce an e.m.f. of 0.72 V in the other.

//initializing the variables:
M = 0.018; // in Henry
N = 2; // no. of coils
E2 = 0.72; // in Volts

//calculation:
dI1dt = abs(E2)/M

printf("\n\n Result \n\n")
printf("\n rate of change of current dI1/dt = %.0f A/s\n", dI1dt)