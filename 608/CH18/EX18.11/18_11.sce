//Problem 18.11: In the differential amplifier shown in Figure 18.16, R1 = 10 kohm, R2 = 10 kohm, R3 = 100 kohm and Rf = 100 kohm. Determine the output voltage Vo if: 
//(a) V1 = 5 mV and V2 = 0 
//(b) V1 = 0 and V2 = 5mV 
//(c) V1 = 50 mV and V2 = 25mV 
//(d) V1 = 25 mV and V2 = 50mV

//initializing the variables:
V1a = 0.005; // in Volts
V2a = 0; // in Volts
V1b = 0; // in Volts
V2b = 0.005; // in Volts
V1c = 0.05; // in Volts
V2c = 0.025; // in Volts
V1d = 0.025; // in Volts
V2d = 0.05; // in Volts
R1 = 10000; // in ohms
R2 = 10000; // in ohms
R3 = 100000; // in ohms
Rf = 100000; // in ohms

//calculation:
Vo1 = -1*Rf*V1a/R1
Vo2 = (R3/(R2+R3))*(1 + (Rf/R1))*V2b
Vo3 = -1*Rf*(V1c-V2c)/R1
Vo4 = (R3/(R2+R3))*(1 + (Rf/R1))*(V2d-V1d)

printf("\n\n Result \n\n")
printf("\n (a)output voltage is %.3f V",Vo1)
printf("\n (b)output voltage is %.3f V",Vo2)
printf("\n (c)output voltage is %.3f V",Vo3)
printf("\n (d)output voltage is %.3f V",Vo4)