clear;
clc;
VDD=25 //voltage axis intersection point in V
ID=4 //current in A

//Calculation
RD=VDD/ID
ID=VDD/(2*RD)
VDS=VDD-(ID*RD)
PT=VDS*ID

mprintf("Drain Resistance= %1.2f ohm\n",RD)
mprintf("Drain current at maximum power ditribution point= %i A\n",ID)
mprintf("drain-to-source voltage at maximum power dissipation point= %2.1f V\n",VDS)
mprintf("Maximum power dissipation= %i W",PT)
