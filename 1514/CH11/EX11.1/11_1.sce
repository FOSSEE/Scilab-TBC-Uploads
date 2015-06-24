//chapter 11
//example 11.1
//page 314
clear all;
clc ;
//given
Rl=120;//load resistance in kohm
Vcc=24;//supply voltage V
Ve=5;Vce=3;
Rc=Rl/10;
printf("\n Rc= %d kohm(standard value resistor)",Rc);

VRC=Vcc-Ve-Vce;
Ic=VRC/Rc;
Re=Ve/Ic;
printf("\n Re= %.2f kohm,use 3.9 kohm ",Re);
Vb=(Ve+0.7)
I2=1000*Ic/10;
R2=round(1000*(Ve+0.7)/I2);
printf("\n R2= %d kohm,use 39 kohm ",R2);R2=39;

I2=(Ve+0.7)/R2;
R1=(Vcc-Vb)/I2;
printf("\n R1= %d kohm,use 120 kohm ",R1);




