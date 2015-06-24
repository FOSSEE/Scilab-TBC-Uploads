//Ex9_7 Pg-477
clc

R1=1.8 //resistor R1 in ohm
R2=1.5*10^(3) //resistor R2 in ohm
Iin=1*10^(-3) //input current in A

Ai=1+(R2/R1) //Current gain
printf("Current gain = %.0f \n",Ai)

Il=Ai*Iin //Output current
printf(" Output current = %.0f mA pp",Il*10^3)
