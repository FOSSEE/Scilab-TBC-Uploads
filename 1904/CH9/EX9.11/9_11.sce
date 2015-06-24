//To Determine the Voltage dip due to 10hp single phase motor
//Page 493
clc;
clear;

Skva=6.3*(10^3); //Starting kVA per HP of the Motor
HPmotor=10; //Power Rating
Vll=7.2*(10^3); //Line Voltage
I3phi=1438; //Fault Current

Sstart=Skva*HPmotor; //Starting kVA

VDIP=120*Sstart/(I3phi*Vll); //Voltage Dip

printf('\na) The Voltage dip due to the motor start is %g V\n',VDIP)
printf('b) From the Permissible voltage flicker limit curve, The Voltage dip of 0.73 V\nwith a frequency of 15 times per hour is in the satisfactory flicker zone\n and therefore is not objectionable to the immediate customers\n')
