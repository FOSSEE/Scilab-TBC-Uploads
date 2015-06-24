//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 101 and 102
clear;
clc;

//Given Data

Vin=20;//supply input voltage in volts
Vz=9.1;//zener breakdown voltage in volts
Pmax=400D-3;//diode maximum power dissipation in watts
Izmin=5;//minimum current for diode to be in breakdown region in milli-amperes

//Solution

Izmax=Pmax/Vz;//maximum safe current through diode in milli-amperes
R=(Vin-Vz)/Izmax;

printf("Optimum value of resistor R=%.2f ohms.\n",R);
printf(" Standard value is 270 ohms.\n");

Iloadmax=Izmax*1000-Izmin;//maximum load current in milli-amperes
printf("Maximum load current in the circuit Iload max=%.2f mA",Iloadmax)
