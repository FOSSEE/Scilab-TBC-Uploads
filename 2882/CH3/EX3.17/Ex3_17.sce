//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 101
clear;
clc;

//Given Data

Vin1=24;//value of voltage source in volts
Vin2=20;//value of voltage source in volts
Vz=12;//zener breakdown voltage in volts
Izmax=20;//maximum zener current in milli-amperes

//Solution

disp("Vin=24V");
R=(Vin1-Vz)/Izmax*1000;//series resistance required for maximum safe current in ohms

printf("The minimum value of resistor required R=%d ohms.",R);
printf("Using R=680 ohms i.e. standaed value.")
R=680;//standard value of resistor selected
disp("Vin=20V");
Iz=(Vin2-Vz)/R*1000;//value of zener current in milli-amperes

printf("Current level at Vin=20V is Iz=%.1f mA",Iz);
