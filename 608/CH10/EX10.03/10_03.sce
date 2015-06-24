//Problem 10.03: Calculate the power dissipated by the voltmeter and by resistor R in Figure 10.9 when (a) R = 250 ohms (b) R = 2 Mohms. Assume that the voltmeter sensitivity (sometimes called figure of merit) is 10 kohms/V.

//initializing the variables:
fsd = 200; // in volts
R1 = 250; // in ohms
R2 = 2E6; // in ohms
sensitivity = 10000; // in ohms/V

//calculation:
Rv = sensitivity*fsd
Iv = V/Rv
Pv = V*Iv
I1 = V/R1
P1 = V*I1
I2 = V/R2
P2 = V*I2

printf("\n\n Result \n\n")
printf("\n (a)the power dissipated by the voltmeter = %.2E W", Pv)
printf("\n (b)the power dissipated by resistor 250 ohm = %.0f W", P1)
printf("\n (c)the power dissipated by resistor 2 Mohm = %.2E W", P2)