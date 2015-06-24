//Problem 10.05: A voltmeter having a f.s.d. of 100 V and a sensitivity of 1.6 kohms/V is used to measure voltage V1 in the circuit of Figure 10.11. Determine (a) the value of voltage V1 with the voltmeter not connected, and (b) the voltage indicated by the voltmeter when connected between A and B.

//initializing the variables:
fsd = 100; // in volts
R1 = 40E3; // in ohms
R2 = 60E3; // in ohms
sensitivity = 1600; // in ohms/V

//calculation:
V1 = (R1/(R1 + R2))*fsd
Rv = fsd*sensitivity
Rep = R1*Rv/(R1 + Rv)
V1n = (Rep/(Rep + R2))*fsd

printf("\n\n Result \n\n")
printf("\n (a)the value of voltage V1 with the voltmeter6 not connected = %.0f V", V1)
printf("\n (b)the voltage indicated by the voltmeter when connected between A and B = %.2f V",V1n)