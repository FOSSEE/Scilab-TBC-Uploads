//chapter 4
//example 4.10
//page 118
clear all;
clc ;
//given
Ic=2;//collector current mA
Vce=5;//collector to emitter voltage V
Vcc=9;//supply voltage +-V
hfe=70;
Vbe=0.7;
Ie=Ic;
VR3=Vcc-Vbe;
R3=VR3/Ic;
printf("\nR3=%.2f kohm,standard value 3.9 kohm",R3);R3=3.9;
Ic=VR3/R3;
Ie=Ic;
VR2=Vcc-Vce+Vbe;
R2=VR2/Ic;
printf("\nR2=%.1f kohm,standard value 2.2 kohm",R2);R2=2.2;
Ibmax=1000*Ic/hfe;
//VR1<<Vbe
VR1=1000*Vbe/10;
R1=VR1/Ibmax;
printf("\nR1=%.1f kohm,standard value 2.2 kohm",R1);





