//Determine the phase angle between 220V main and the current

clc;
clear;

f=50;//Frequency of AC Mains
Vni=100;//Voltage for non inductive load
Ini=10; // Current drawn by a non inductive load
Rni=Vni/Ini;// Resistance of an non inductive load
Vac=220;// Supply from AC Mains

Z=Vac/Ini;

X=sqrt((Z^2)-(Rni^2));

phi=atand(X/Rni);// Phase Angle

L=X/(2*%pi*f);//Inductance

printf('The inductance of a reactor to be connected in series = %g H\n',L)
printf('The phase angle between the 220V mains and the current = %g degrees\n',phi)
