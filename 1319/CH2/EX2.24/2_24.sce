// Determine the current through 10 ohm resistor using thevenins circuit

clc;
clear;

//Source Voltages
V1=10;
V2=2;

// Resistances of upper limb
R1=15;
R2=25;

//Resistances of lower limb

R3=30;
R4=20;

//For a thevenin circuit
i1=(V1-V2)/(R1+R2); // Current in upper limb
i2=V1/(R3+R4); // Current in lower limb

Vac=(i1*R2)+2;
Vbc=(i2*R4);

Vab=Vac-Vbc; // Thevenin Voltage

Vth=Vab;
Zl=10; // Load resistance

Reff1=(R1*R2/(R2+R1));
Reff2=(R3*R4/(R3+R4));

Zth=Reff1+Reff2;

I=Vth/(Zl+Zth); // Curent through AB

printf('The current through the 10 ohm resistor = %g mA\n',I*1000)
