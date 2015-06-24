//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 97 and 98
clear;
clc;

//Given Data

Vin=18;//input voltage in volts
Vz=10;//zener breakdown voltage in volts
Tr=20;//reference temperature in degree celsius
T=40;//given temperature in degree celcius
Tc=0.075/100;//Temperature co-efficient in degree celcius inverse
R=150;//value of resistor in ohms

//Solution

dVz=Vz*Tc*(T-Tr);//Change in Vz in volts
Vz40=Vz+dVz;//Zener voltage at T=40 degree celsius
Vr=Vin-Vz40;//voltage drop across resistor

printf("The output voltage Vo = Vr =%.2f Volts",Vr);
