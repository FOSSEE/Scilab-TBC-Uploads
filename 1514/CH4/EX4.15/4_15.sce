//chapter 4
//example 4.15
//page 135
clear all;
clc ;
//given
Vbe=0.7;
Vcc=15;//supply voltage V
Ic=1;//collector current mA
Vcesat=0.2;//saturation voltage
Rc=(Vcc-Vcesat)/Ic;
printf("\nRc=%.1fkohm,standard value 15kohm",Rc);
hfemin=35;//from datasheet of 2N3903
Ibmin=1000*Ic/hfemin;
Rb=1000*(Vcc-Vbe)/Ibmin
printf("\nValue of Rb= %d kohm",Rb);
printf('\nUse the next lower standard resistance (470 kohm) to ensure that Ib is little\nlarger than the minimum level required for transistor saturation.')
