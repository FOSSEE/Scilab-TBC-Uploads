//To determine the voltage dip due to the motor start for a 100 hp 3Phase Motor
//Page 495
clc;
clear;

Skva=5.6*(10^3); //Starting kVA per HP of the Motor
HPmotor=100; //Power Rating
Vll=12.47*(10^3); //Line Voltage
I3phi=1765; //Fault Current

Sstart=Skva*HPmotor; //Starting kVA

VDIP=69.36*Sstart/(I3phi*Vll); //Voltage Dip

printf('\na) The Voltage dip due to the motor start is %g V\n',VDIP)
printf('b) From the Permissible voltage flicker limit curve, The Voltage dip of 1.72 V\nwith a frequency of three times per hour is in the satisfactory flicker zone\n and therefore is not objectionable to the immediate customers\n')
