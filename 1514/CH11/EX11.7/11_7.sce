//chapter 11
//example 11.7
//page 328
clear all;
clc ;
//given
Rl=40;//load resistance in kohm
Vcc=14;//supply voltage V
Ve1=5;Vce1=3;Vce2=3;
Vc1=Ve1+Vce1;
Vb2=Vc1;
Ve2=Vb2-0.7;
VR5=Vcc-Ve2-Vce2;
R5=Rl/10;
printf("\nR5=%d kohm,use standard value 3.9 kohm ",R5);R5=3.9;
Ic2=1000*VR5/R5;
R6=1000*Ve2/Ic2;
printf("\nR6=%.1f kohm,use standard value 8.2 kohm ",R6);R6=8.2;
Ic2=1000*Ve2/R6;
Ic1=1;//mA
VR3=Vcc-Vc1;
R3=VR3/Ic1;
printf("\nR3=%d kohm,use standard value 5.6 kohm ",R3);R3=5.6;
Ic1=VR3/R3;
R4=Ve1/Ic1;
printf("\nR4 is approximately %.1f kohm which is standard value",R4);
Vb1=Ve1+0.7;
I2=round(1000*Ic1/10);
R2=1000*Vb1/I2;
printf("\nR2=%.1f kohm,use standard value 47 kohm ",R2);R2=47;
I21=1000*Vb1/R2;
R1=1000*(Vcc-Vb1)/I21;
printf("\nR1=%d kohm which is standard value ",R1);










