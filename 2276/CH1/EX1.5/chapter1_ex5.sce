clc
clear

//input
v1=21;//voltage of first battery in arm 1 in volts
v2=16;//voltage of second battery in arm 2 in volts
r1=3;//internal resistance of first battery in ohms
r2=2;//internal resistance of second battery in ohms
R=6;//resistance going to be introduced in arm AB in ohms
//arms 1,2 and AB are in parallel
//arm AB is a short circuit path

//calculations
//norton's equivalent circuit method
Isc=(v1/r1)+(v2/r2);//current through short circuit path in amperes
aRb=(r1*r2)/(r1+r2);//equivalent resistance in ohms
//now 6ohm resistor is placed in arm AB
aIb=Isc*((aRb)/(aRb+R));//current through 6 ohm resistor in amperes

//output
mprintf('the constants for norton equivalent generator are %3.1f A and %3.1f ohm \n the current through the 6 ohm resistor is %3.1f A',Isc,aRb,aIb)
