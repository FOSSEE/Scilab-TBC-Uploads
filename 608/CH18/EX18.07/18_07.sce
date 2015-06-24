//Problem 18.07: For the op amp shown in Figure 18.8, R1 = 4.7 kohm and R2 = 10 kohm. If the input voltage is- 0.4 V, determine (a) the voltage gain (b) the output voltage

//initializing the variables:
Vi = -0.4; // in Volts
R1 = 4700; // in ohms
R2 = 10000; // in ohms

//calculation:
A = 1 + (R2/R1)
Vo = A*Vi

printf("\n\n Result \n\n")
printf("\n(a) the voltage gain is %.2f",A)
printf("\n(b) output voltageis %.2f V",Vo)