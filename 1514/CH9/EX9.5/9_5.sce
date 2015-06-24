//chapter 9
//example 9.5
//page 259
clear all;
clc ;
//given
Idmax=2.5;//drain current in mA for point A
Vds=8;//drain to source voltage in volts
Vdd=24; // supply voltage in volts 
Vgs1=0;//when Id=0mA (point B)
deltaVgs=4.8;
deltaId=4.5;//from transfer characteristics
Rs1=(deltaVgs/deltaId);//in Kohm
Rs=1;//standard value
Vgs=Idmax*Rs;//gate to source voltage in volts
Rd=(Vdd-Vds-Vgs)/Idmax;//drain resistance in Kohm

printf('\nRs is %.2f ohm\nRd is %.1f kohm',Rs1,Rd)
printf('\nThus using standard values :\nRs is %d kohm\nRd is 4.7 kohm',Rs)
