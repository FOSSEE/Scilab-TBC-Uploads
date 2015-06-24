//chapter 9
//example 9.7
//page 264
clear all;
clc ;
//given

Idmax=2.5;//drain current in mA for point A
Vds=8;//drain to source voltage in volts
Vdd=25; // supply voltage in volts 
Rd=(Vds)/(Idmax);
Rs=2.7;
deltaVgs=Idmax*Rs;
VR2=4.1;//in V
R2=1;//in Mohm
I2=VR2/R2;//in microV
VR1=Vdd-VR2;
R1=VR1/I2;//in Mohm
printf('\nRd=%.1f kohm\nR1=%.1f kohm',Rd,R1);
printf('\nThus using standard values :\nRd=2.7 kohm and R1=5.6 Mohm')

