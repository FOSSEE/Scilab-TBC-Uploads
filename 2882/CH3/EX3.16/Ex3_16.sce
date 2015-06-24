//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 100
clear;
clc;

//Given Data

Vin=50;//input voltage in volts
Vz=30;//zener breakdown voltage in volts
R=2D3;//value of resistor in ohms

//Solution
//With reference to Figure 3.32

disp("Case (i)");
disp("Rload=30 kohm");
Rload=30D3;//load resistance in ohms
Vbc=Vz;//voltage across diode in volts
Vab=Vin-Vbc;//voltage across resiston in volts
I=Vab/R*1000;//battery current in milli-amperes
Iload=Vbc/Rload*1000;//current through load in milli-amperes
Iz=I-Iload;//current through diode in milli-amperes

printf("\n Zenner current Iz = %d mA\n",Iz)

disp("Case (ii)");
disp("Rload=10 kohm");
Rload=10D3;//load resistance in ohms
Vbc=Vz;//voltage across diode in volts
Vab=Vin-Vbc;//voltage across resiston in volts
I=Vab/R*1000;//battery current in milli-amperes
Iload=Vbc/Rload*1000;//current through load in milli-amperes
Iz=I-Iload;//current through diode in milli-amperes

printf("\n Zenner current Iz = %d mA\n",Iz)

disp("Case (iii)");
disp("Rload=3 kohm");
Rload=3D3;//load resistance in ohms
Vbc=Vz;//voltage across diode in volts
Vab=Vin-Vbc;//voltage across resiston in volts
I=Vab/R*1000;//battery current in milli-amperes
Iload=Vbc/Rload*1000;//current through load in milli-amperes
Iz=I-Iload;//current through diode in milli-amperes

printf("\n Zenner current Iz = %d mA\n",Iz)

printf("\n Since Iz=0 the diode will come out of breakdown region\n and diode will no longer act as a voltage regulator.");
