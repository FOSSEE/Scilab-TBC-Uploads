//Ex4_12 Pg-245
clc

V=20 //source voltage
Vz=12 //zener voltage
Vr=V-Vz //voltage across resistor 
Rs=330 //series resistance
 disp("Voltage across resistor ")
printf("        = %.0f V \n ",Vr)

disp("Current through series resistor")
Iser=Vr/Rs //Current through series resistor
printf("        = %.1f mA \n ",Iser*10^3)

disp("Since Zener diode is in series with resistor, current through it is equal to current flowing through resistor,i.e 24.2mA ")
