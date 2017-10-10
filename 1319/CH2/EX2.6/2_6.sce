// Determine the current in the branches of the network using nodal analysis

clc;
clear;

// Supply voltages
V1=30;
V2=40;

// Resistances in the network
R1=4;
R2=2;
R3=4;

Vb=poly([0 1],'Vb','c');

AD=(V1-Vb)/R1;
BD=(V2-Vb)/R3;
CD=Vb/R2;

X=AD+BD-CD;

disp('The Characterictic Equation to find Vb is')

disp(CD,'=',AD,'       +',BD)

Vb=roots(X);// Stores the numerical value of Vb

i1=(V1-Vb)/R1;
i2=(V2-Vb)/R3;
i3=Vb/R2;

disp('amperes',i1,'Current through 4 ohm resistor on the 30V supply side =')
disp('amperes',i2,'Current through 4 ohm resistor on the 40V supply side =')
disp('amperes',i3,'Current through 2 ohm resistor =')
