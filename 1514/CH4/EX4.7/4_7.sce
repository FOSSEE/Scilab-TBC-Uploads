//chapter 4
//example 4.7
//page 112
clear all;
clc ;
//given
Vcc=15;//supply voltage
Vce=5;//collector to emitter voltage
Ic=5;//mA
hfe=100;Vbe=0.7;
//drop across RE & RC
Vrc=Vcc-Vce;
VRC=Vrc/2;
Ve=VRC;
Rc=VRC/Ic;
printf("\nRc=%d kohm,standard value 1 kohm",Rc);
Ie=Ic;
Re=Ve/Ic;
printf("\nRe=%d kohm,standard value 1 kohm",Re);
Vb=Ve+Vbe;
I2=Ic/10;
R2=Vb/I2;
printf("\nR2=%.1f kohm,standard value 12 kohm",R2);
R1=(Vcc-Vb)/I2;
printf("\nR1=%.1f kohm,standard value 18 kohm",R1);
