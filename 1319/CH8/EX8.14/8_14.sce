//To determine the starting torque in terms of full load torque

clc;
clear;

sfl=4/100;

Rir=5; // Ratio of starting current to the full load current at rated voltage

x=70.7/100; // Auto transformer tapping

Rsd=((Rir)^2)*sfl/3; // Ratio of the starting load to full load torque for a star -delta starter

Ra=((x*Rir)^2)*sfl; // Ratio of the starting load to full load torque for an 70.7% tapped auto transformer

printf('The starting torque in terms of full load torque by \n')
printf('i) Star-Delta starter = %g Tfl \n',Rsd)
printf('ii) An auto-tranformer starter with 70.7 percent tapping = %g Tfl \n',Ra)
