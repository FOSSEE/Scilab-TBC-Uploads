//Ex4_13 Pg-245
clc

V=20 //source voltage in V
Vz=12 //zener voltage in V
Vs=V-Vz //voltage across resistor in V 
Rs=330 //series resistance in ohm
RL=1.5*10^3 //load resistance in ohm
 disp("Voltage across resistor ")
printf("        = %.0f V \n ",Vs)

disp("(1) Current through series resistor Is")
Is=Vs/Rs //Current through series resistor
printf("      Is  = %.1f mA \n ",Is*10^3)

disp("(2) Current through series load Il")
VL=Vz //voltage across load
IL=VL/RL //Current through series load
printf("      IL  = %.0f mA \n ",IL*10^3)

disp("(3)Current through zener diode")
Iz=Is-IL //Current through zener diode
printf("      IL  = %.1f mA \n ",Iz*10^3)

disp("(4)Respective wattage of elements used")
disp("(a) Series resistor -> W=Is*Vs")
W=Vs*Is //wattage of series resistor
printf("          = %.1f mW \n ",W*10^3)

disp("(b) Zener diode -> W=Iz*Vz")
W=Vz*Iz //wattage of zener diode
printf("          = %.1f mW \n ",W*10^3)


disp("(b) Load resistor -> W=IL*VL")
W=VL*IL //wattage of zener diode
printf("          = %.0f mW \n ",W*10^3)