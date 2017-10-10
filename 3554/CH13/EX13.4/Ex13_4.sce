// Exa 13.4

clc;
clear all;

// Given data

R= 4;// Resistance of thermistor in k Ohms
R1=0.003;// Meter resistance in k Ohms
Rc=0.017; // in k Ohms
Vt=15;// in Volts

// Solution

// From fig. 13.2(b)- graph of Temp vs Resistance we find that,thermistor resistance at 25 degree Celsius is 4  K ohms and at 65.5556 degree Celsius it is 950 ohms.
R_25= 4;// in k Ohms
R_65=0.95; // in k Ohms

I1=Vt/(R_25+R1+Rc); // current at 25 degree Celsius(A)
I2=Vt/(R_65+R1+Rc); // current at 65.556 degree Celsius(A)

printf(' The current meter reading at 25 degree Celsius = %.2f mA and at 150 degree fahrenheit = %.1f mA \n', I1,I2);
