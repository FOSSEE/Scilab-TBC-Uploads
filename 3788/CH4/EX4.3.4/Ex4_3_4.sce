//Example 4.3.4
// Calculate the GT ratio and also if the Noise temperature is risen

//Variables
clc
clear
D = 30
na = 0.68
lam = 0.0723
temp0 = 79
temp1 = 88

//Calculation
Gr = na*((%pi*D)/lam)^2
GrdB = 10*log10(Gr)
Ts0 = 10*log10(temp0)
Ts1 = 10*log10(temp1)
GT = GrdB - Ts0
GTnew = GrdB - Ts1

//Result
printf("The Gain of antenna is %f dB \n",GrdB)
printf("System noise temperature is %f dBK \n",Ts1)
printf("Earth station GT ratio is %f dB/K \n",GT)
printf("If the temperature rises to 88K ,then new GT ratio is %f dB/K",GTnew)
