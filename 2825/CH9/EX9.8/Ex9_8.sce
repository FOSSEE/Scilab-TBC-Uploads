//Ex9_8 Pg-477
clc

R1=2.7 //resistor R1 in ohm
R2=1//resistor R2 in ohm
Vin=0.5 //input voltage in V

Io=Vin/R1 //output current
printf("(1) Output current = %.0f mA \n",Io*10^3)

P=Io^2*R2 //load power
printf(" (2) Load power = %.1f mW \n",P*10^3)

R2=2 // new load resistor R2 in ohm
P=Io^2*R2 //load power
printf(" (2) Load power = %.1f mW",P*10^3)
