//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 96
clear;
clc;

//Given Data
//From Figure 3.27

V=15;//value of voltage source in volts
Vz=12;//zener breakdown voltage in volts
R=390;//series resistance in ohms
rz=10;//diode resistance in ohms
Izmax=10;//maximum zener current in milli-amperes

//Solution

//Assuming ideal diode Vz=12V and Rz=0 ohms
Vr=V-Vz;//voltage across resistor in volts
Iz=Vr/(R+rz)*1000;//current through circuit in milli-amperes

if Iz<Izmax then
    printf("The diode is properly biased.\n");
else printf("The diode is not biased properly.\n");
end

Pz=Vz*Iz;//power dissipation in milli-watts

printf("The dissipated power = Pz = %d mW",Pz);
