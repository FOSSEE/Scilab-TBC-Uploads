//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 97
clear;
clc;

//Given Data
//From Figure 3.28

V=15;//value of voltage source in volts
Vz=10;//zener breakdown voltage in volts
Rs=300;//series resistance R in ohms
Rp=900;//shunt resistance R' in ohms
Izmax=10;//maximum zener current in milli-amperes

//Solution

//Assuming ideal diode Vz=12V and Rz=0 ohms
Vrs=V-Vz;//voltage across resistor in volts
Irs=Vrs/Rs*1000;//current through resistor R in milli-amperes
Irp=Vz/Rp*1000;//current through resistor R' in milli-amperes

Iz=Irs-Irp;//current through diode in milli-amperes

if Iz<Izmax then
    printf("The diode is properly biased.\n");
else printf("The diode is not biased properly.\n");
end

Pd=Vz*Iz;//power dissipation in milli-watts

printf("The dissipated power = Pd = %.1f mW",Pd);
