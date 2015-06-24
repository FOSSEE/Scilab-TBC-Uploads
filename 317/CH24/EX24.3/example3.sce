// find efficiency and power dissipated
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 24-3, page 955

clear; clc; close;

// Given data
Vin=15;// input voltage
Rs=10;// in ohms
Vz=6.2;// in volts
Vbe=0.81;// in volts
Rl=40;// in ohms
R1=750;// in ohms
R2=250 ;// in ohms

// Calculations
Vout=((R1+R2)/R1)*(Vz+Vbe);// output voltage in volts
Is=(Vin-Vout)/Rs;// current through series resistor in amperes
Il=Vout/Rl;// load current in amperes
Ic=Is-Il;// collector current in ampers
Pout=Vout*Il;// load power in watts
Iin=Is;// as I3 is very low input current in amperes
Pin=Vin*Iin;// input power in watts
E=(Pout/Pin)*100;// efficiency in %
Preg=Pin-Pout;// power dissipated by regulator in watts
disp("%",E,"efficiency=")
disp("watts",Preg,"power dissipated=")

// Results
// Efficiency is 25.8 %
// Power dissipated by regulator is 6.29 watts