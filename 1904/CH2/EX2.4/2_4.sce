//To determine copper losses of the feeder
//Page 48
clc;
clear;

SP=3000*(10^3); //System peak in kVA per phase
Cl=0.5/100; //Percentage of copper loss
I2R= Cl*SP; //Copper loss of the feeder per phase
I2R3=3*I2R; //Copper losses of the feeder per 3 phase

printf('a) The copper loss of the feeder per phase = %g kW\n',(I2R/1000))
printf(' b) The total coper losses of the feeder per three phase = %g kW\n',(I2R3/1000))
