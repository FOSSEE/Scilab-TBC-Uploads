//Problem 18.08: For the summing op amp shown in Figure 18.11, determine the output voltage, Vo

//initializing the variables:
V1 = 0.5; // in Volts
V2 = 0.8; // in Volts
V3 = 1.2; // in Volts
R1 = 10000; // in ohms
R2 = 20000; // in ohms
R3 = 30000; // in ohms
Rf = 50000; // in ohms

//calculation:
Vo = -1*Rf*(V1/R1 + V2/R2 + V3/R3)

printf("\n\n Result \n\n")
printf("\n output voltageis %.1f V",Vo)