//Ex4_15 Pg-246
clc

IL1=10*10^(-3) 
IL2=20*10^(-3) //IL1,IL2 range of load current in A
Vin=20 //supply voltage in V
Izt=6*10^(-3) //zener current in A
Vz=15 //zener voltage in V

disp("Average load current")
IL=(IL1+IL2)/2 // Average load current
printf("\n      IL = %.0f mA \n ",IL*10^3)

disp("Total current entering the circuit")
Is=IL+Izt //current entering the circuit
printf("\n      Is = %.0f mA \n ",Is*10^3)

disp("Series resistor")
Rs=(Vin-Vz)/Is //Series resistor in ohm
printf("\n      Rs = %.0f ohm \n ",Rs)

disp("Power rating of resistor")
Vs=Vin-Vz 
P=(Vs^2)/Rs //Power rating of resistor
printf("\n      P = %.1f W \n ",P)
