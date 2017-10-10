//Calculate the Equivalent Conductance of Chloride ion at infinite dilution ,How long it will take for the ion to travell between two electrodes

//Example 8.4

clc;

clear;

Uneg=7.91*10^-4;  //Mobility of Chloride ion in cm^2 s^-1 V^-1

F=96500;  //Faraday's constant in C mol^-1

Lemdaneg=F*Uneg;  //Equivalent conductance of the ion at infinite dilution in C s^-1 V^-1 mol^-1 cm^2 (ohm^-1 mol^-1 cm^2 or ohm^-1 equiv^-1 cm^2)

printf("(a)Equivalent Conductance = %.1f ohm^-1 equiv^-1 cm^2",Lemdaneg);
E=20;  //Electric field in V cm^-1

Vneg=E*Uneg;  //Ionic velocity of the ion in cm s^-1

d=4;  //Distance between two electrodes in cm

t=(d/Vneg)/60;  //Time taken by an ion to travel between two electrode in min

printf("\n(b)Time taken = %.1f min",t);
