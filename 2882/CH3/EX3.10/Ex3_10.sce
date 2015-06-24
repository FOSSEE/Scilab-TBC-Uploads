//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 95
clear;
clc;

//Given Data

Pz=0.5;//power dissipation of zener diode in watts
Vz=12;//zener breakdown voltage in volts
Tr=25;//reference temperature in degree celsius
T=90;//given temperature in degree celcius
Tc=0.075/100;//Temperature co-efficient in degree celcius inverse

//Solution

dVz=Vz*Tc*(T-Tr);//Change in Vz in volts
Vz90=Vz+dVz;//Zener voltage at T=90 degree celsius

printf("The value of Vz at T=90° C Vz=%.2f Volts",Vz90);
