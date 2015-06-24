//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 99 and 100
clear;
clc;

//Given Data

Vin1=50;//input voltage in volts
Vin2=75;//input voltage in volts
Vz=15;//zener breakdown voltage in volts
Pmax=1;//diode maximum power dissipation in watts
R=3.9D3;//value of resistor in ohms
Rload=3D3;//value of load resistance in ohms

//Solution
//With reference to Figure 3.32
disp("Case (a)");
disp("Vin=50V");
Vbc=Vz;//voltage across diode in volts
Vab=Vin1-Vbc;//voltage across resiston in volts
I=Vab/R*1000;//battery current in milli-amperes
Iload=Vbc/Rload*1000;//current through load in milli-amperes
Iz=I-Iload;//current through diode in milli-amperes
Izmax=Pmax/Vz*1000;//maximum current through diode in milli-amperes

printf("\n Battery current I = %.2f mA\n Zenner current Iz = %.2f mA\n Load current Iload = %d mA",I,Iz,Iload)

disp("Case (b)");
disp("Vin=75V");
Vbc=Vz;//voltage across diode in volts
Vab=Vin2-Vbc;//voltage across resiston in volts
I=Vab/R*1000;//battery current in milli-amperes
Iload=Vbc/Rload*1000;//current through load in milli-amperes
Iz=I-Iload;//current through diode in milli-amperes
Izmax=Pmax/Vz*1000;//maximum current through diode in milli-amperes

printf("\n Battery current I = %.2f mA\n Zenner current Iz = %.2f mA\n Load current Iload = %d mA",I,Iz,Iload)

printf("\n\n Load current remains constant for any voltage input.");
