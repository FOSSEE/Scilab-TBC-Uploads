clear//

//Variables

VS1 = 5            //Voltage source 1 (in volts)
VS2 = 3            //Voltage source 2 (in volts)
V6  = 0            //Voltage drop across 6 ohm resistor when AB is open (in volts)
R1 = 6             //Resistor (in ohm)
R2 = 4             //Resistor (in ohm)

//Calculation

I = 5.0/4          //Current through 4 ohm resistor (in Ampere)
V = I * R2         //Voltage drop across 4 ohm Resistor (in volts)
VOC = VS2 + V6 + V //Open circuit voltage (in volts)
Rth = R1

//Result

printf("\n Thevenins equivalent Voltage is  %0.3f  V.\nThevenins equivalent resistance is  %0.3f  ohm.",VOC,Rth)
