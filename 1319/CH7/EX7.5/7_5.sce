//Voltage Regulation of a 3 Phase alternator

clc;
clear;

Ra=0.093;
Xs=8.5;
Z=(Ra+(%i*Xs)); // Total Impedance

P=1500*(10^3); // Power delivered at full load
V=6.6*(10^3); // Voltage per line
Vph=V/(sqrt(3)); // Voltage per phase

Il=P/(sqrt(3)*V); // Full Load Current


// Taking voltage as reference
//Power Angles
theta1=-acos(0.8); // Negative Sign as It is lagging
theta2=acos(0.8); 

deff('a=pot(b)','a=Vph+((Il*expm(%i*b))*Z)')// Function to find out the output phase voltage

E1=pot(theta1);
E2=pot(theta2);

deff('y=vg(x)','y=(abs(x)-Vph)*100/Vph') // Function to find out the voltage regulation using the formuala

Vreg1=vg(E1);
Vreg2=vg(E2);

printf('The Voltage regulation of a 3-Phase 1500 kVA, 6.6 kV alternator at \n')
printf('i) 0.8 lag = %g percent \n',Vreg1)
printf('ii) 0.8 lead = %g percent \n',Vreg2)
