clear;
clc;
Iz_min=1492.5*10^-3 //Zener diode current in Ampere
Vz=25 //Zener diode voltage in Volt

//Calculation
Pmin=Vz*Iz_min

mprintf("Minimum Power Rating p= %2.1f W",Pmin)
