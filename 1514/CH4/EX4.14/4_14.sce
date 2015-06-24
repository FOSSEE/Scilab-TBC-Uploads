//chapter 4
//example 4.14
//page 134
clear all;
clc ;
//given
Vcc=10;//supply voltage V
Rc=1;//collector resistance kohm
Vb=5;//Base voltage V
Vcesat=0.2;
hfemin=100;
Vbe=0.7;
Ic=(Vcc-Vcesat)/Rc;
Ibmin=Ic/hfemin;
Rb=(Vb-Vbe)/Ibmin;
printf("\nValue of Rb=%.1f kohm",Rb);
printf('\nRb is a maximum Value.\nThe next lower standard resistance (39 kohm) should be selected to ensure that \nIb is large enough to drive the transistor into saturation.')




