
//To determine the pulse width for a particular average value of back EMF
//Page 244
clc;
clear;
E=220;//DC Supply
Raw=0.2; //Combined Armature and Field Winding Resistance
Ia=25;//Average Current
f=200;//Chopper Frequency
Eb=100; //Average Value of Back EMF

Eav=(Ia*Raw)+Eb; //Average Load Voltage
Ton=Eav*1000/(E*f); // Pulse Width in m sec

printf('The Pulse Width for the 100V back EMF is %g m seconds\n',Ton)
