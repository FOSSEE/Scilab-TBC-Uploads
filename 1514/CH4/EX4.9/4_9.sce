//chapter 4
//example 4.9
//page 116
clear all;
clc ;
//given
Vbe=0.7;
Vcc=12;//supply voltage V
Ic=1;//collector current mA
Vce=3;//collector to emitter voltage V
Ve=5;//as Ve>>Vbe
Ie=Ic;
R4=Ve/Ic;
printf("\nR4=%d kohm,standard value 4.7 kohm",R4);R4=4.7;
Ve=Ie*R4;
Vc=Ve+Vce;
VR3=Vcc-Vc;
R3=VR3/Ic;
printf("\nR3=%.1f kohm,standard value 3.9 kohm\nThis will reduce VR3 and increase Vce slightly.",R3);R3=3.9;
Vb=Ve+Vbe;
I2=1000*Ic/10;
R2=1000*Vb/I2;
printf("\nR2=%d kohm,standard value 56 kohm",R2);R2=56;
I2=1000*Vb/R2;I2=96.4;
R1=1000*(Vcc-Vb)/I2;
printf("\nR1=%.1f kohm,standard value 68 kohm",R1);




